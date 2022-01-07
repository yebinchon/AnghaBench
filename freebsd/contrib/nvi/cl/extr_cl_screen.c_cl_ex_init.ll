; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_ex_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_ex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CL_SCR_EX_INIT = common dso_local global i32 0, align 4
@CL_STDIN_TTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cup\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"smso\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rmso\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"el\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cuu1\00", align 1
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@TCSASOFT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@M_SYSERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"tcsetattr\00", align 1
@ECHOCTL = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cl_ex_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_ex_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_5__* @CLP(i32* %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = load i32, i32* @CL_SCR_EX_INIT, align 4
  %9 = call i64 @F_ISSET(%struct.TYPE_5__* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %108

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i32, i32* @CL_STDIN_TTY, align 4
  %15 = call i64 @F_ISSET(%struct.TYPE_5__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %127

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  %22 = call i32 @cl_getcap(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = call i32 @cl_getcap(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = call i32 @cl_getcap(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32** %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = call i32 @cl_getcap(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32** %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = call i32 @cl_getcap(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32** %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %18
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %43, %18
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = bitcast %struct.TYPE_6__* %75 to i8*
  %79 = bitcast %struct.TYPE_6__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 4 %79, i64 12, i1 false)
  %80 = load i32, i32* @ECHO, align 4
  %81 = load i32, i32* @ECHOE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ECHOK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ICANON, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IEXTEN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @ISIG, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @ICRNL, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @OPOST, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %121, %73, %11
  %109 = load i32, i32* @STDIN_FILENO, align 4
  %110 = load i32, i32* @TCSADRAIN, align 4
  %111 = load i32, i32* @TCSASOFT, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i64 @tcsetattr(i32 %109, i32 %112, %struct.TYPE_6__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EINTR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %108

122:                                              ; preds = %117
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* @M_SYSERR, align 4
  %125 = call i32 @msgq(i32* %123, i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %127

126:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %122, %17
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_5__* @CLP(i32*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cl_getcap(i32*, i8*, i32**) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @tcsetattr(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
