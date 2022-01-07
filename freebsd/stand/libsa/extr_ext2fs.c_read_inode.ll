; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_read_inode.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i64, i8*, i64*)* }
%struct.file = type { i32*, i32, i64, %struct.ext2dinode, i32, %struct.ext2fs* }
%struct.ext2dinode = type { i32 }
%struct.ext2fs = type { i64 }

@F_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXT2_NIADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.open_file*)* @read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_inode(i32 %0, %struct.open_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ext2fs*, align 8
  %7 = alloca %struct.ext2dinode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.open_file* %1, %struct.open_file** %4, align 8
  %12 = load %struct.open_file*, %struct.open_file** %4, align 8
  %13 = getelementptr inbounds %struct.open_file, %struct.open_file* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.file*
  store %struct.file* %15, %struct.file** %5, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 5
  %18 = load %struct.ext2fs*, %struct.ext2fs** %17, align 8
  store %struct.ext2fs* %18, %struct.ext2fs** %6, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %20 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %8, align 8
  %23 = call i32 @twiddle(i32 1)
  %24 = load %struct.open_file*, %struct.open_file** %4, align 8
  %25 = getelementptr inbounds %struct.open_file, %struct.open_file* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32, i64, i8*, i64*)*, i32 (i32, i32, i32, i64, i8*, i64*)** %27, align 8
  %29 = load %struct.open_file*, %struct.open_file** %4, align 8
  %30 = getelementptr inbounds %struct.open_file, %struct.open_file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @F_READ, align 4
  %33 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ino_to_db(%struct.ext2fs* %33, i32 %36, i32 %37)
  %39 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %40 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 %28(i32 %31, i32 %32, i32 %38, i64 %41, i8* %42, i64* %9)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %86

47:                                               ; preds = %2
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %50 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @EIO, align 4
  store i32 %54, i32* %11, align 4
  br label %86

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = bitcast i8* %56 to %struct.ext2dinode*
  store %struct.ext2dinode* %57, %struct.ext2dinode** %7, align 8
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 3
  %60 = load %struct.ext2dinode*, %struct.ext2dinode** %7, align 8
  %61 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @ino_to_bo(%struct.ext2fs* %61, i32 %62)
  %64 = getelementptr inbounds %struct.ext2dinode, %struct.ext2dinode* %60, i64 %63
  %65 = bitcast %struct.ext2dinode* %59 to i8*
  %66 = bitcast %struct.ext2dinode* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 4 %66, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %78, %55
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @EXT2_NIADDR, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 -1, i32* %77, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %67

81:                                               ; preds = %67
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 1
  store i32 -1, i32* %83, align 8
  %84 = load %struct.file*, %struct.file** %5, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %53, %46
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @ino_to_db(%struct.ext2fs*, i32, i32) #1

declare dso_local i64 @ino_to_bo(%struct.ext2fs*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
