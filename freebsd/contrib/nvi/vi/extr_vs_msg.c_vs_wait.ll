; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*, i8*, i64)*, i32 (%struct.TYPE_20__*, i32, i32)* }
%struct.TYPE_22__ = type { i64, i8 }
%struct.TYPE_19__ = type { i64, i32 }

@CMSG_CONT_S = common dso_local global i32 0, align 4
@CMSG_CONT_Q = common dso_local global i32 0, align 4
@CMSG_CONT_EX = common dso_local global i32 0, align 4
@CMSG_CONT = common dso_local global i32 0, align 4
@E_CHARACTER = common dso_local global i64 0, align 8
@E_INTERRUPT = common dso_local global i64 0, align 8
@CH_QUIT = common dso_local global i8 0, align 1
@G_INTERRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32*, i32)* @vs_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_wait(%struct.TYPE_20__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %10, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = call %struct.TYPE_19__* @VIP(%struct.TYPE_20__* %15)
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %8, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  %19 = load i32 (%struct.TYPE_20__*, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32)** %18, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = call i32 @LASTLINE(%struct.TYPE_20__* %21)
  %23 = call i32 %19(%struct.TYPE_20__* %20, i32 %22, i32 0)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = call i64 @IS_ONELINE(%struct.TYPE_20__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = load i32, i32* @CMSG_CONT_S, align 4
  %30 = call i8* @msg_cmsg(%struct.TYPE_20__* %28, i32 %29, i64* %11)
  store i8* %30, i8** %9, align 8
  br label %48

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %45 [
    i32 128, label %33
    i32 129, label %37
    i32 130, label %41
  ]

33:                                               ; preds = %31
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = load i32, i32* @CMSG_CONT_Q, align 4
  %36 = call i8* @msg_cmsg(%struct.TYPE_20__* %34, i32 %35, i64* %11)
  store i8* %36, i8** %9, align 8
  br label %47

37:                                               ; preds = %31
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = load i32, i32* @CMSG_CONT_EX, align 4
  %40 = call i8* @msg_cmsg(%struct.TYPE_20__* %38, i32 %39, i64* %11)
  store i8* %40, i8** %9, align 8
  br label %47

41:                                               ; preds = %31
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load i32, i32* @CMSG_CONT, align 4
  %44 = call i8* @msg_cmsg(%struct.TYPE_20__* %42, i32 %43, i64* %11)
  store i8* %44, i8** %9, align 8
  br label %47

45:                                               ; preds = %31
  %46 = call i32 (...) @abort() #3
  unreachable

47:                                               ; preds = %41, %37, %33
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 3
  %51 = load i32 (%struct.TYPE_20__*, i8*, i64)*, i32 (%struct.TYPE_20__*, i8*, i64)** %50, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 %51(%struct.TYPE_20__* %52, i8* %53, i64 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = call i32 %64(%struct.TYPE_20__* %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = call i32 %69(%struct.TYPE_20__* %70, i32 0)
  %72 = load i32*, i32** %5, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %48
  %75 = load i32*, i32** %5, align 8
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %48
  br label %77

77:                                               ; preds = %99, %76
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = call i64 @v_event_get(%struct.TYPE_20__* %78, %struct.TYPE_22__* %7, i32 0, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %131

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @E_CHARACTER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %105

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @E_INTERRUPT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8, i8* @CH_QUIT, align 1
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store i8 %94, i8* %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %97 = load i32, i32* @G_INTERRUPTED, align 4
  %98 = call i32 @F_SET(%struct.TYPE_21__* %96, i32 %97)
  br label %105

99:                                               ; preds = %88
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = call i32 %102(%struct.TYPE_20__* %103)
  br label %77

105:                                              ; preds = %93, %87
  %106 = load i32, i32* %6, align 4
  switch i32 %106, label %131 [
    i32 128, label %107
    i32 129, label %119
    i32 130, label %130
  ]

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %109 = load i8, i8* %108, align 8
  %110 = sext i8 %109 to i32
  %111 = load i8, i8* @CH_QUIT, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %116 = load i32, i32* @G_INTERRUPTED, align 4
  %117 = call i32 @F_SET(%struct.TYPE_21__* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %107
  br label %131

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %121 = load i8, i8* %120, align 8
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 58
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32*, i32** %5, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32*, i32** %5, align 8
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %127, %124, %119
  br label %131

130:                                              ; preds = %105
  br label %131

131:                                              ; preds = %81, %105, %130, %129, %118
  ret void
}

declare dso_local %struct.TYPE_19__* @VIP(%struct.TYPE_20__*) #1

declare dso_local i32 @LASTLINE(%struct.TYPE_20__*) #1

declare dso_local i64 @IS_ONELINE(%struct.TYPE_20__*) #1

declare dso_local i8* @msg_cmsg(%struct.TYPE_20__*, i32, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @v_event_get(%struct.TYPE_20__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
