; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_free_nlmsglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_free_nlmsglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsg_list = type { %struct.nlmsg_list*, %struct.nlmsg_list* }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlmsg_list*)* @free_nlmsglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_nlmsglist(%struct.nlmsg_list* %0) #0 {
  %2 = alloca %struct.nlmsg_list*, align 8
  %3 = alloca %struct.nlmsg_list*, align 8
  %4 = alloca %struct.nlmsg_list*, align 8
  %5 = alloca i32, align 4
  store %struct.nlmsg_list* %0, %struct.nlmsg_list** %2, align 8
  %6 = load %struct.nlmsg_list*, %struct.nlmsg_list** %2, align 8
  %7 = icmp ne %struct.nlmsg_list* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nlmsg_list*, %struct.nlmsg_list** %2, align 8
  store %struct.nlmsg_list* %11, %struct.nlmsg_list** %3, align 8
  br label %12

12:                                               ; preds = %31, %9
  %13 = load %struct.nlmsg_list*, %struct.nlmsg_list** %3, align 8
  %14 = icmp ne %struct.nlmsg_list* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.nlmsg_list*, %struct.nlmsg_list** %3, align 8
  %17 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %16, i32 0, i32 1
  %18 = load %struct.nlmsg_list*, %struct.nlmsg_list** %17, align 8
  %19 = icmp ne %struct.nlmsg_list* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.nlmsg_list*, %struct.nlmsg_list** %3, align 8
  %22 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %21, i32 0, i32 1
  %23 = load %struct.nlmsg_list*, %struct.nlmsg_list** %22, align 8
  %24 = call i32 @free(%struct.nlmsg_list* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.nlmsg_list*, %struct.nlmsg_list** %3, align 8
  %27 = getelementptr inbounds %struct.nlmsg_list, %struct.nlmsg_list* %26, i32 0, i32 0
  %28 = load %struct.nlmsg_list*, %struct.nlmsg_list** %27, align 8
  store %struct.nlmsg_list* %28, %struct.nlmsg_list** %4, align 8
  %29 = load %struct.nlmsg_list*, %struct.nlmsg_list** %3, align 8
  %30 = call i32 @free(%struct.nlmsg_list* %29)
  br label %31

31:                                               ; preds = %25
  %32 = load %struct.nlmsg_list*, %struct.nlmsg_list** %4, align 8
  store %struct.nlmsg_list* %32, %struct.nlmsg_list** %3, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @__set_errno(i32 %34)
  br label %36

36:                                               ; preds = %33, %8
  ret void
}

declare dso_local i32 @free(%struct.nlmsg_list*) #1

declare dso_local i32 @__set_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
