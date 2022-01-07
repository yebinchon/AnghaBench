; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_user_mad = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fd %d umad %p timeout %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"mad received by agent %d length %d\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"read returned %zu > sizeof umad %zu + length %d (%m)\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umad_recv(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_user_mad*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.ib_user_mad*
  store %struct.ib_user_mad* %13, %struct.ib_user_mad** %10, align 8
  store i32 0, i32* @errno, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15, i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %121

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dev_poll(i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* @errno, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %121

43:                                               ; preds = %30, %27
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (...) @umad_size()
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %46, %48
  %50 = call i32 @read(i32 %44, i8* %45, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (...) @umad_size()
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %52, %54
  %56 = call i32 @VALGRIND_MAKE_MEM_DEFINED(i8* %51, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %43
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (...) @umad_size()
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %61, %63
  %65 = icmp sle i32 %60, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = load %struct.ib_user_mad*, %struct.ib_user_mad** %10, align 8
  %68 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i8*, i32, i32, ...) @DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (...) @umad_size()
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (...) @umad_size()
  %78 = sub nsw i32 %76, %77
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %82

80:                                               ; preds = %66
  %81 = load i32*, i32** %8, align 8
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %75
  %83 = load %struct.ib_user_mad*, %struct.ib_user_mad** %10, align 8
  %84 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  br label %121

86:                                               ; preds = %59, %43
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @EWOULDBLOCK, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* @errno, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %95, i32* @errno, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %121

98:                                               ; preds = %86
  %99 = load %struct.ib_user_mad*, %struct.ib_user_mad** %10, align 8
  %100 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (...) @umad_size()
  %103 = sub nsw i32 %101, %102
  %104 = call i32 (...) @umad_size()
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i32, ...) @DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i32 %106)
  %108 = load %struct.ib_user_mad*, %struct.ib_user_mad** %10, align 8
  %109 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (...) @umad_size()
  %112 = sub nsw i32 %110, %111
  %113 = load i32*, i32** %8, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @errno, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %98
  %117 = load i32, i32* @EIO, align 4
  store i32 %117, i32* @errno, align 4
  br label %118

118:                                              ; preds = %116, %98
  %119 = load i32, i32* @errno, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %96, %82, %41, %23
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @TRACE(i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_poll(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @umad_size(...) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(i8*, i32) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
