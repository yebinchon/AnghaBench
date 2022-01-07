; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_delsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_delsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32 }
%struct.call = type { i32 }
%struct.party = type { i32 }
%struct.sig = type { i64, i64, i64, %struct.party*, %struct.call* }

@link = common dso_local global i32 0, align 4
@SIG_CALL = common dso_local global i64 0, align 8
@SIG_PARTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_delsig(%struct.uni* %0, i64 %1, %struct.call* %2, %struct.party* %3) #0 {
  %5 = alloca %struct.uni*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.call*, align 8
  %8 = alloca %struct.party*, align 8
  %9 = alloca %struct.sig*, align 8
  %10 = alloca %struct.sig*, align 8
  store %struct.uni* %0, %struct.uni** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.call* %2, %struct.call** %7, align 8
  store %struct.party* %3, %struct.party** %8, align 8
  %11 = load %struct.uni*, %struct.uni** %5, align 8
  %12 = getelementptr inbounds %struct.uni, %struct.uni* %11, i32 0, i32 1
  %13 = call %struct.sig* @TAILQ_FIRST(i32* %12)
  store %struct.sig* %13, %struct.sig** %9, align 8
  br label %14

14:                                               ; preds = %86, %4
  %15 = load %struct.sig*, %struct.sig** %9, align 8
  %16 = icmp ne %struct.sig* %15, null
  br i1 %16, label %17, label %88

17:                                               ; preds = %14
  %18 = load %struct.sig*, %struct.sig** %9, align 8
  %19 = load i32, i32* @link, align 4
  %20 = call %struct.sig* @TAILQ_NEXT(%struct.sig* %18, i32 %19)
  store %struct.sig* %20, %struct.sig** %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @SIG_CALL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.sig*, %struct.sig** %9, align 8
  %26 = getelementptr inbounds %struct.sig, %struct.sig* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIG_CALL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.sig*, %struct.sig** %9, align 8
  %32 = getelementptr inbounds %struct.sig, %struct.sig* %31, i32 0, i32 4
  %33 = load %struct.call*, %struct.call** %32, align 8
  %34 = load %struct.call*, %struct.call** %7, align 8
  %35 = icmp eq %struct.call* %33, %34
  br i1 %35, label %58, label %36

36:                                               ; preds = %30, %24, %17
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @SIG_PARTY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load %struct.sig*, %struct.sig** %9, align 8
  %42 = getelementptr inbounds %struct.sig, %struct.sig* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SIG_PARTY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %40
  %47 = load %struct.sig*, %struct.sig** %9, align 8
  %48 = getelementptr inbounds %struct.sig, %struct.sig* %47, i32 0, i32 4
  %49 = load %struct.call*, %struct.call** %48, align 8
  %50 = load %struct.call*, %struct.call** %7, align 8
  %51 = icmp eq %struct.call* %49, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %46
  %53 = load %struct.sig*, %struct.sig** %9, align 8
  %54 = getelementptr inbounds %struct.sig, %struct.sig* %53, i32 0, i32 3
  %55 = load %struct.party*, %struct.party** %54, align 8
  %56 = load %struct.party*, %struct.party** %8, align 8
  %57 = icmp eq %struct.party* %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %52, %30
  %59 = load %struct.uni*, %struct.uni** %5, align 8
  %60 = getelementptr inbounds %struct.uni, %struct.uni* %59, i32 0, i32 1
  %61 = load %struct.sig*, %struct.sig** %9, align 8
  %62 = load i32, i32* @link, align 4
  %63 = call i32 @TAILQ_REMOVE(i32* %60, %struct.sig* %61, i32 %62)
  %64 = load %struct.sig*, %struct.sig** %9, align 8
  %65 = getelementptr inbounds %struct.sig, %struct.sig* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.sig*, %struct.sig** %9, align 8
  %70 = getelementptr inbounds %struct.sig, %struct.sig* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @uni_msg_destroy(i64 %71)
  br label %73

73:                                               ; preds = %68, %58
  %74 = load %struct.sig*, %struct.sig** %9, align 8
  %75 = getelementptr inbounds %struct.sig, %struct.sig* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.sig*, %struct.sig** %9, align 8
  %80 = getelementptr inbounds %struct.sig, %struct.sig* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @UNI_FREE(i64 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.sig*, %struct.sig** %9, align 8
  %85 = call i32 @SIG_FREE(%struct.sig* %84)
  br label %86

86:                                               ; preds = %83, %52, %46, %40, %36
  %87 = load %struct.sig*, %struct.sig** %10, align 8
  store %struct.sig* %87, %struct.sig** %9, align 8
  br label %14

88:                                               ; preds = %14
  %89 = load %struct.uni*, %struct.uni** %5, align 8
  %90 = getelementptr inbounds %struct.uni, %struct.uni* %89, i32 0, i32 0
  %91 = call %struct.sig* @TAILQ_FIRST(i32* %90)
  store %struct.sig* %91, %struct.sig** %9, align 8
  br label %92

92:                                               ; preds = %164, %88
  %93 = load %struct.sig*, %struct.sig** %9, align 8
  %94 = icmp ne %struct.sig* %93, null
  br i1 %94, label %95, label %166

95:                                               ; preds = %92
  %96 = load %struct.sig*, %struct.sig** %9, align 8
  %97 = load i32, i32* @link, align 4
  %98 = call %struct.sig* @TAILQ_NEXT(%struct.sig* %96, i32 %97)
  store %struct.sig* %98, %struct.sig** %10, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @SIG_CALL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load %struct.sig*, %struct.sig** %9, align 8
  %104 = getelementptr inbounds %struct.sig, %struct.sig* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SIG_CALL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.sig*, %struct.sig** %9, align 8
  %110 = getelementptr inbounds %struct.sig, %struct.sig* %109, i32 0, i32 4
  %111 = load %struct.call*, %struct.call** %110, align 8
  %112 = load %struct.call*, %struct.call** %7, align 8
  %113 = icmp eq %struct.call* %111, %112
  br i1 %113, label %136, label %114

114:                                              ; preds = %108, %102, %95
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @SIG_PARTY, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %164

118:                                              ; preds = %114
  %119 = load %struct.sig*, %struct.sig** %9, align 8
  %120 = getelementptr inbounds %struct.sig, %struct.sig* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SIG_PARTY, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %164

124:                                              ; preds = %118
  %125 = load %struct.sig*, %struct.sig** %9, align 8
  %126 = getelementptr inbounds %struct.sig, %struct.sig* %125, i32 0, i32 4
  %127 = load %struct.call*, %struct.call** %126, align 8
  %128 = load %struct.call*, %struct.call** %7, align 8
  %129 = icmp eq %struct.call* %127, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %124
  %131 = load %struct.sig*, %struct.sig** %9, align 8
  %132 = getelementptr inbounds %struct.sig, %struct.sig* %131, i32 0, i32 3
  %133 = load %struct.party*, %struct.party** %132, align 8
  %134 = load %struct.party*, %struct.party** %8, align 8
  %135 = icmp eq %struct.party* %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %130, %108
  %137 = load %struct.uni*, %struct.uni** %5, align 8
  %138 = getelementptr inbounds %struct.uni, %struct.uni* %137, i32 0, i32 0
  %139 = load %struct.sig*, %struct.sig** %9, align 8
  %140 = load i32, i32* @link, align 4
  %141 = call i32 @TAILQ_REMOVE(i32* %138, %struct.sig* %139, i32 %140)
  %142 = load %struct.sig*, %struct.sig** %9, align 8
  %143 = getelementptr inbounds %struct.sig, %struct.sig* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.sig*, %struct.sig** %9, align 8
  %148 = getelementptr inbounds %struct.sig, %struct.sig* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @uni_msg_destroy(i64 %149)
  br label %151

151:                                              ; preds = %146, %136
  %152 = load %struct.sig*, %struct.sig** %9, align 8
  %153 = getelementptr inbounds %struct.sig, %struct.sig* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.sig*, %struct.sig** %9, align 8
  %158 = getelementptr inbounds %struct.sig, %struct.sig* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @UNI_FREE(i64 %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.sig*, %struct.sig** %9, align 8
  %163 = call i32 @SIG_FREE(%struct.sig* %162)
  br label %164

164:                                              ; preds = %161, %130, %124, %118, %114
  %165 = load %struct.sig*, %struct.sig** %10, align 8
  store %struct.sig* %165, %struct.sig** %9, align 8
  br label %92

166:                                              ; preds = %92
  ret void
}

declare dso_local %struct.sig* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.sig* @TAILQ_NEXT(%struct.sig*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sig*, i32) #1

declare dso_local i32 @uni_msg_destroy(i64) #1

declare dso_local i32 @UNI_FREE(i64) #1

declare dso_local i32 @SIG_FREE(%struct.sig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
