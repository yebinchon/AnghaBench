; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_free_varlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_free_varlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_var = type { i32, i64 }

@EOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_varlist(%struct.ctl_var* %0) #0 {
  %2 = alloca %struct.ctl_var*, align 8
  %3 = alloca %struct.ctl_var*, align 8
  store %struct.ctl_var* %0, %struct.ctl_var** %2, align 8
  %4 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %5 = icmp ne %struct.ctl_var* %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  store %struct.ctl_var* %7, %struct.ctl_var** %3, align 8
  br label %8

8:                                                ; preds = %22, %6
  %9 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %10 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EOV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @free(i8* %20)
  br label %22

22:                                               ; preds = %16
  %23 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %23, i32 1
  store %struct.ctl_var* %24, %struct.ctl_var** %3, align 8
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.ctl_var*, %struct.ctl_var** %2, align 8
  %27 = bitcast %struct.ctl_var* %26 to i8*
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
