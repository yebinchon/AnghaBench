; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_set_pinstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_set_pinstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REDIR_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vioapic_set_pinstate: invalid pin number %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"vioapic_set_pinstate: vioapic is not locked\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ioapic pin%d: bad acnt %d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ioapic pin%d: asserted\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ioapic pin%d: deasserted\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"ioapic pin%d: %s, ignored, acnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vioapic*, i32, i32)* @vioapic_set_pinstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vioapic_set_pinstate(%struct.vioapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vioapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vioapic* %0, %struct.vioapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @REDIR_ENTRIES, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %24 = call i32 @VIOAPIC_LOCKED(%struct.vioapic* %23)
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %27 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %16
  %37 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %38 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %56

46:                                               ; preds = %16
  %47 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %48 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %46, %36
  %57 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %58 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @VIOAPIC_CTR2(%struct.vioapic* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %56
  store i32 0, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  %79 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %100

82:                                               ; preds = %75, %72
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %99

92:                                               ; preds = %85, %82
  %93 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @pinstate_str(i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @VIOAPIC_CTR3(%struct.vioapic* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %88
  br label %100

100:                                              ; preds = %99, %78
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @vioapic_send_intr(%struct.vioapic* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VIOAPIC_LOCKED(%struct.vioapic*) #1

declare dso_local i32 @VIOAPIC_CTR2(%struct.vioapic*, i8*, i32, i32) #1

declare dso_local i32 @VIOAPIC_CTR1(%struct.vioapic*, i8*, i32) #1

declare dso_local i32 @VIOAPIC_CTR3(%struct.vioapic*, i8*, i32, i32, i32) #1

declare dso_local i32 @pinstate_str(i32) #1

declare dso_local i32 @vioapic_send_intr(%struct.vioapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
