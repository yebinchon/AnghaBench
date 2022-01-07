; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_ruleset_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_ruleset_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, %struct.TYPE_3__*, i32, %struct.pf_anchor** }
%struct.TYPE_3__ = type { i32 }
%struct.pf_anchor = type { i32 }

@PFCTL_FLAG_NAT = common dso_local global i32 0, align 4
@PF_RULESET_NAT = common dso_local global i32 0, align 4
@PF_RULESET_BINAT = common dso_local global i32 0, align 4
@PF_RULESET_RDR = common dso_local global i32 0, align 4
@altqsupport = common dso_local global i64 0, align 8
@PFCTL_FLAG_ALTQ = common dso_local global i32 0, align 4
@PF_RULESET_ALTQ = common dso_local global i32 0, align 4
@PFCTL_FLAG_FILTER = common dso_local global i32 0, align 4
@PF_RULESET_SCRUB = common dso_local global i32 0, align 4
@PF_RULESET_FILTER = common dso_local global i32 0, align 4
@PFCTL_FLAG_TABLE = common dso_local global i32 0, align 4
@PF_RULESET_TABLE = common dso_local global i32 0, align 4
@DIOCXBEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_ruleset_trans(%struct.pfctl* %0, i8* %1, %struct.pf_anchor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfctl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pf_anchor*, align 8
  %8 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pf_anchor* %2, %struct.pf_anchor** %7, align 8
  %9 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %10 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %15 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PFCTL_FLAG_NAT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %3
  %21 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %22 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* @PF_RULESET_NAT, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @pfctl_add_trans(%struct.TYPE_3__* %23, i32 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %30 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @PF_RULESET_BINAT, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @pfctl_add_trans(%struct.TYPE_3__* %31, i32 %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %38 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* @PF_RULESET_RDR, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @pfctl_add_trans(%struct.TYPE_3__* %39, i32 %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %28, %20
  store i32 1, i32* %4, align 4
  br label %129

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.pf_anchor*, %struct.pf_anchor** %7, align 8
  %48 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %49 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %48, i32 0, i32 3
  %50 = load %struct.pf_anchor**, %struct.pf_anchor*** %49, align 8
  %51 = getelementptr inbounds %struct.pf_anchor*, %struct.pf_anchor** %50, i64 0
  %52 = load %struct.pf_anchor*, %struct.pf_anchor** %51, align 8
  %53 = icmp eq %struct.pf_anchor* %47, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load i64, i64* @altqsupport, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %59 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PFCTL_FLAG_ALTQ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %66 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* @PF_RULESET_ALTQ, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @pfctl_add_trans(%struct.TYPE_3__* %67, i32 %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 2, i32* %4, align 4
  br label %129

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %57, %54, %46
  %75 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %76 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PFCTL_FLAG_FILTER, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %74
  %82 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %83 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* @PF_RULESET_SCRUB, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = call i64 @pfctl_add_trans(%struct.TYPE_3__* %84, i32 %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %81
  %90 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %91 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* @PF_RULESET_FILTER, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @pfctl_add_trans(%struct.TYPE_3__* %92, i32 %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89, %81
  store i32 3, i32* %4, align 4
  br label %129

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %74
  %100 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %101 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PFCTL_FLAG_TABLE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %108 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* @PF_RULESET_TABLE, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @pfctl_add_trans(%struct.TYPE_3__* %109, i32 %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 4, i32* %4, align 4
  br label %129

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %99
  %117 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %118 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pfctl*, %struct.pfctl** %5, align 8
  %121 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* @DIOCXBEGIN, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @pfctl_trans(i32 %119, %struct.TYPE_3__* %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  store i32 5, i32* %4, align 4
  br label %129

128:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %127, %114, %97, %72, %44
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @pfctl_add_trans(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i64 @pfctl_trans(i32, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
