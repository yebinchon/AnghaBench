; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_aclchecks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_aclchecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { %struct.config_str2list* }
%struct.config_str2list = type { i32, i32, %struct.config_str2list* }
%struct.sockaddr_storage = type { i32 }

@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot parse access control address %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*)* @aclchecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aclchecks(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_str2list*, align 8
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  %7 = load %struct.config_file*, %struct.config_file** %2, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 0
  %9 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  store %struct.config_str2list* %9, %struct.config_str2list** %6, align 8
  br label %10

10:                                               ; preds = %29, %1
  %11 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %12 = icmp ne %struct.config_str2list* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %15 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %18 = call i32 @netblockstrtoaddr(i32 %16, i32 %17, %struct.sockaddr_storage* %4, i32* %5, i32* %3)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %22 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %25 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fatal_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.config_str2list*, %struct.config_str2list** %6, align 8
  %31 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %30, i32 0, i32 2
  %32 = load %struct.config_str2list*, %struct.config_str2list** %31, align 8
  store %struct.config_str2list* %32, %struct.config_str2list** %6, align 8
  br label %10

33:                                               ; preds = %10
  ret void
}

declare dso_local i32 @netblockstrtoaddr(i32, i32, %struct.sockaddr_storage*, i32*, i32*) #1

declare dso_local i32 @fatal_exit(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
