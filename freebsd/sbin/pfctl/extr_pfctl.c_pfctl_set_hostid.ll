; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_hostid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_hostid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i32, i32 }

@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_OPTION = common dso_local global i32 0, align 4
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"set hostid 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_set_hostid(%struct.pfctl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfctl*, align 8
  %5 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @loadopt, align 4
  %7 = load i32, i32* @PFCTL_FLAG_OPTION, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @HTONL(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %16 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %18 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %20 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ntohl(i32 %26)
  %28 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %11
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @HTONL(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
