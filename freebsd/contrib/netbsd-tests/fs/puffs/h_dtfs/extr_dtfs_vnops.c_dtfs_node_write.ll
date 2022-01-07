; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_cred = type { i32 }
%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dtfs_file = type { i32** }

@VREG = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@PUFFS_IO_APPEND = common dso_local global i32 0, align 4
@DTFS_BLOCKSIZE = common dso_local global i32 0, align 4
@DTFS_BLOCKSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_write(%struct.puffs_usermount* %0, i8* %1, i32* %2, i64 %3, i64* %4, %struct.puffs_cred* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.puffs_usermount*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.puffs_cred*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.puffs_node*, align 8
  %17 = alloca %struct.dtfs_file*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store %struct.puffs_cred* %5, %struct.puffs_cred** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.puffs_node*
  store %struct.puffs_node* %23, %struct.puffs_node** %16, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call %struct.dtfs_file* @DTFS_CTOF(i8* %24)
  store %struct.dtfs_file* %25, %struct.dtfs_file** %17, align 8
  %26 = load %struct.puffs_node*, %struct.puffs_node** %16, align 8
  %27 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VREG, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @EISDIR, align 4
  store i32 %33, i32* %8, align 4
  br label %106

34:                                               ; preds = %7
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @PUFFS_IO_APPEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.puffs_node*, %struct.puffs_node** %16, align 8
  %41 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i64*, i64** %13, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = load %struct.puffs_node*, %struct.puffs_node** %16, align 8
  %50 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %48, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.puffs_node*, %struct.puffs_node** %16, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @dtfs_setsize(%struct.puffs_node* %55, i64 %59)
  br label %61

61:                                               ; preds = %54, %44
  %62 = load i32*, i32** %11, align 8
  store i32* %62, i32** %18, align 8
  br label %63

63:                                               ; preds = %67, %61
  %64 = load i64*, i64** %13, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = load i64*, i64** %13, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* @DTFS_BLOCKSIZE, align 4
  %72 = call i32 @BLOCKLEFT(i64 %70, i32 %71)
  %73 = call i64 @MIN(i64 %69, i32 %72)
  store i64 %73, i64* %20, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* @DTFS_BLOCKSHIFT, align 4
  %76 = call i32 @BLOCKNUM(i64 %74, i32 %75)
  store i32 %76, i32* %21, align 4
  %77 = load %struct.dtfs_file*, %struct.dtfs_file** %17, align 8
  %78 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* @DTFS_BLOCKSIZE, align 4
  %86 = call i32 @BLOCKOFF(i64 %84, i32 %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32* %88, i32** %19, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = load i64, i64* %20, align 8
  %92 = call i32 @memcpy(i32* %89, i32* %90, i64 %91)
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %20, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %19, align 8
  %99 = load i64, i64* %20, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %101, %99
  store i64 %102, i64* %100, align 8
  br label %63

103:                                              ; preds = %63
  %104 = load %struct.puffs_node*, %struct.puffs_node** %16, align 8
  %105 = call i32 @dtfs_updatetimes(%struct.puffs_node* %104, i32 0, i32 1, i32 1)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %32
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local %struct.dtfs_file* @DTFS_CTOF(i8*) #1

declare dso_local i32 @dtfs_setsize(%struct.puffs_node*, i64) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @BLOCKLEFT(i64, i32) #1

declare dso_local i32 @BLOCKNUM(i64, i32) #1

declare dso_local i32 @BLOCKOFF(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @dtfs_updatetimes(%struct.puffs_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
