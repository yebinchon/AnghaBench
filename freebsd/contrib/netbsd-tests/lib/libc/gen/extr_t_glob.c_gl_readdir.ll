; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_glob.c_gl_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_glob.c_gl_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32, i32, i32, i32 }
%struct.gl_dir = type { i64, i64, %struct.gl_file* }
%struct.gl_file = type { i64, i32 }

@gl_readdir.dir = internal global %struct.dirent zeroinitializer, align 8
@DT_DIR = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"readdir %s %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dirent* (i8*)* @gl_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirent* @gl_readdir(i8* %0) #0 {
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gl_dir*, align 8
  %5 = alloca %struct.gl_file*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.gl_dir*
  store %struct.gl_dir* %7, %struct.gl_dir** %4, align 8
  %8 = load %struct.gl_dir*, %struct.gl_dir** %4, align 8
  %9 = getelementptr inbounds %struct.gl_dir, %struct.gl_dir* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.gl_dir*, %struct.gl_dir** %4, align 8
  %12 = getelementptr inbounds %struct.gl_dir, %struct.gl_dir* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load %struct.gl_dir*, %struct.gl_dir** %4, align 8
  %17 = getelementptr inbounds %struct.gl_dir, %struct.gl_dir* %16, i32 0, i32 2
  %18 = load %struct.gl_file*, %struct.gl_file** %17, align 8
  %19 = load %struct.gl_dir*, %struct.gl_dir** %4, align 8
  %20 = getelementptr inbounds %struct.gl_dir, %struct.gl_dir* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.gl_file, %struct.gl_file* %18, i64 %21
  store %struct.gl_file* %23, %struct.gl_file** %5, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 4), align 4
  %25 = load %struct.gl_file*, %struct.gl_file** %5, align 8
  %26 = getelementptr inbounds %struct.gl_file, %struct.gl_file* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strcpy(i32 %24, i32 %27)
  %29 = load %struct.gl_file*, %struct.gl_file** %5, align 8
  %30 = getelementptr inbounds %struct.gl_file, %struct.gl_file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strlen(i32 %31)
  store i32 %32, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 2), align 4
  %33 = load %struct.gl_dir*, %struct.gl_dir** %4, align 8
  %34 = getelementptr inbounds %struct.gl_dir, %struct.gl_dir* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 0), align 8
  %36 = load %struct.gl_file*, %struct.gl_file** %5, align 8
  %37 = getelementptr inbounds %struct.gl_file, %struct.gl_file* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %15
  %41 = load i32, i32* @DT_DIR, align 4
  br label %44

42:                                               ; preds = %15
  %43 = load i32, i32* @DT_REG, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 3), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 4), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 3), align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DPRINTF(i8* %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 2), align 4
  %52 = call i32 @_DIRENT_RECLEN(%struct.dirent* @gl_readdir.dir, i32 %51)
  store i32 %52, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @gl_readdir.dir, i32 0, i32 1), align 8
  store %struct.dirent* @gl_readdir.dir, %struct.dirent** %2, align 8
  br label %54

53:                                               ; preds = %1
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %54

54:                                               ; preds = %53, %44
  %55 = load %struct.dirent*, %struct.dirent** %2, align 8
  ret %struct.dirent* %55
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @_DIRENT_RECLEN(%struct.dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
