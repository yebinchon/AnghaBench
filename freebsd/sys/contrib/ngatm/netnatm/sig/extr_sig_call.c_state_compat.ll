; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_state_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_state_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i64 }

@CALLST_U1 = common dso_local global i64 0, align 8
@CALLST_U3 = common dso_local global i64 0, align 8
@CALLST_U4 = common dso_local global i64 0, align 8
@UNI_CALLSTATE_N6 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_N7 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_N8 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_N9 = common dso_local global i32 0, align 4
@CALLST_NULL = common dso_local global i32 0, align 4
@CALLST_N6 = common dso_local global i64 0, align 8
@CALLST_N7 = common dso_local global i64 0, align 8
@CALLST_N8 = common dso_local global i64 0, align 8
@CALLST_N9 = common dso_local global i64 0, align 8
@UNI_CALLSTATE_U1 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_U3 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_U4 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_N1 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_N3 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_N4 = common dso_local global i32 0, align 4
@CALLST_U6 = common dso_local global i64 0, align 8
@CALLST_U7 = common dso_local global i64 0, align 8
@CALLST_U8 = common dso_local global i64 0, align 8
@UNI_CALLSTATE_U6 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_U7 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_U8 = common dso_local global i32 0, align 4
@UNI_CALLSTATE_U9 = common dso_local global i32 0, align 4
@CALLST_N1 = common dso_local global i64 0, align 8
@CALLST_N3 = common dso_local global i64 0, align 8
@CALLST_N4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.call*, i32)* @state_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_compat(%struct.call* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.call*, align 8
  %5 = alloca i32, align 4
  store %struct.call* %0, %struct.call** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.call*, %struct.call** %4, align 8
  %7 = getelementptr inbounds %struct.call, %struct.call* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CALLST_U1, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load %struct.call*, %struct.call** %4, align 8
  %13 = getelementptr inbounds %struct.call, %struct.call* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CALLST_U3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.call*, %struct.call** %4, align 8
  %19 = getelementptr inbounds %struct.call, %struct.call* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CALLST_U4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17, %11, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UNI_CALLSTATE_N6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UNI_CALLSTATE_N7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @UNI_CALLSTATE_N8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @UNI_CALLSTATE_N9, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %23
  %40 = load i32, i32* @CALLST_NULL, align 4
  store i32 %40, i32* %3, align 4
  br label %158

41:                                               ; preds = %35, %17
  %42 = load %struct.call*, %struct.call** %4, align 8
  %43 = getelementptr inbounds %struct.call, %struct.call* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CALLST_N6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %41
  %48 = load %struct.call*, %struct.call** %4, align 8
  %49 = getelementptr inbounds %struct.call, %struct.call* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CALLST_N7, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.call*, %struct.call** %4, align 8
  %55 = getelementptr inbounds %struct.call, %struct.call* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CALLST_N8, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.call*, %struct.call** %4, align 8
  %61 = getelementptr inbounds %struct.call, %struct.call* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CALLST_N9, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59, %53, %47, %41
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @UNI_CALLSTATE_U1, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @UNI_CALLSTATE_U3, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @UNI_CALLSTATE_U4, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69, %65
  %78 = load i32, i32* @CALLST_NULL, align 4
  store i32 %78, i32* %3, align 4
  br label %158

79:                                               ; preds = %73, %59
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @UNI_CALLSTATE_N1, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @UNI_CALLSTATE_N3, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @UNI_CALLSTATE_N4, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %87, %83, %79
  %92 = load %struct.call*, %struct.call** %4, align 8
  %93 = getelementptr inbounds %struct.call, %struct.call* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CALLST_U6, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %115, label %97

97:                                               ; preds = %91
  %98 = load %struct.call*, %struct.call** %4, align 8
  %99 = getelementptr inbounds %struct.call, %struct.call* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CALLST_U7, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load %struct.call*, %struct.call** %4, align 8
  %105 = getelementptr inbounds %struct.call, %struct.call* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CALLST_U8, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.call*, %struct.call** %4, align 8
  %111 = getelementptr inbounds %struct.call, %struct.call* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CALLST_N9, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109, %103, %97, %91
  %116 = load i32, i32* @CALLST_NULL, align 4
  store i32 %116, i32* %3, align 4
  br label %158

117:                                              ; preds = %109, %87
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @UNI_CALLSTATE_U6, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %133, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @UNI_CALLSTATE_U7, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @UNI_CALLSTATE_U8, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @UNI_CALLSTATE_U9, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %129, %125, %121, %117
  %134 = load %struct.call*, %struct.call** %4, align 8
  %135 = getelementptr inbounds %struct.call, %struct.call* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CALLST_N1, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.call*, %struct.call** %4, align 8
  %141 = getelementptr inbounds %struct.call, %struct.call* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @CALLST_N3, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.call*, %struct.call** %4, align 8
  %147 = getelementptr inbounds %struct.call, %struct.call* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CALLST_N4, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %145, %139, %133
  %152 = load i32, i32* @CALLST_NULL, align 4
  store i32 %152, i32* %3, align 4
  br label %158

153:                                              ; preds = %145, %129
  %154 = load %struct.call*, %struct.call** %4, align 8
  %155 = getelementptr inbounds %struct.call, %struct.call* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %151, %115, %77, %39
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
