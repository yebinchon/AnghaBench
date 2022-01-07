; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_dup.c_check_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_dup.c_check_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@__const.check_mode.perm = private unnamed_addr constant [5 x i32] [i32 448, i32 256, i32 384, i32 292, i32 438], align 16
@path = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"/etc/passwd\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @check_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %17 = load i32, i32* @O_RDONLY, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @O_WRONLY, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @O_RDWR, align 4
  store i32 %21, i32* %20, align 4
  %22 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([5 x i32]* @__const.check_mode.perm to i8*), i64 20, i1 false)
  store i64 0, i64* %14, align 8
  br label %23

23:                                               ; preds = %117, %3
  %24 = load i64, i64* %14, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %26 = call i64 @__arraycount(i32* %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %120

28:                                               ; preds = %23
  store i64 0, i64* %15, align 8
  br label %29

29:                                               ; preds = %113, %28
  %30 = load i64, i64* %15, align 8
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %32 = call i64 @__arraycount(i32* %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %29
  %35 = load i32, i32* @path, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @O_CREAT, align 4
  %42 = or i32 %40, %41
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, ...) @open(i8* %37, i32 %42, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ATF_REQUIRE(i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = icmp sge i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @ATF_REQUIRE(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %34
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @dup(i32 %60)
  store i32 %61, i32* %11, align 4
  br label %80

62:                                               ; preds = %34
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @dup2(i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %79

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @O_CLOEXEC, align 4
  %76 = call i32 @dup3(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %78

77:                                               ; preds = %69
  store i32 -1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %72
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %11, align 4
  %82 = icmp sge i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @ATF_REQUIRE(i32 %83)
  %85 = call i32 @memset(%struct.stat* %9, i32 0, i32 8)
  %86 = call i32 @memset(%struct.stat* %10, i32 0, i32 8)
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @fstat(i32 %87, %struct.stat* %9)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @ATF_REQUIRE(i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i64 @fstat(i32 %92, %struct.stat* %10)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ATF_REQUIRE(i32 %95)
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %80
  %103 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %80
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @close(i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @close(i32 %109)
  %111 = load i32, i32* @path, align 4
  %112 = call i32 @unlink(i32 %111)
  br label %113

113:                                              ; preds = %104
  %114 = load i64, i64* %15, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %15, align 8
  br label %29

116:                                              ; preds = %29
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %14, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %14, align 8
  br label %23

120:                                              ; preds = %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @__arraycount(i32*) #2

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @dup3(i32, i32, i32) #2

declare dso_local i32 @memset(%struct.stat*, i32, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
