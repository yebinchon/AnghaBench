; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_localzonechecks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_localzonechecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32 }
%struct.local_zones = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed local-zone, local-data configuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*)* @localzonechecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @localzonechecks(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  %3 = alloca %struct.local_zones*, align 8
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  %4 = call %struct.local_zones* (...) @local_zones_create()
  store %struct.local_zones* %4, %struct.local_zones** %3, align 8
  %5 = icmp ne %struct.local_zones* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.local_zones*, %struct.local_zones** %3, align 8
  %10 = load %struct.config_file*, %struct.config_file** %2, align 8
  %11 = call i32 @local_zones_apply_cfg(%struct.local_zones* %9, %struct.config_file* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 @fatal_exit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load %struct.local_zones*, %struct.local_zones** %3, align 8
  %17 = call i32 @local_zones_delete(%struct.local_zones* %16)
  ret void
}

declare dso_local %struct.local_zones* @local_zones_create(...) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @local_zones_apply_cfg(%struct.local_zones*, %struct.config_file*) #1

declare dso_local i32 @local_zones_delete(%struct.local_zones*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
