; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_process_get_neigh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_process_get_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_neigh_handler = type { i64, i32, i32 }
%struct.nl_msg = type { i32 }
%struct.rtmsg = type { i32, i32 }

@RTM_GETROUTE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_ALIGNTO = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@NL_CB_VALID = common dso_local global i32 0, align 4
@NL_CB_CUSTOM = common dso_local global i32 0, align 4
@get_route_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_get_neigh(%struct.get_neigh_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.get_neigh_handler*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.rtmsg, align 4
  %6 = alloca i32, align 4
  store %struct.get_neigh_handler* %0, %struct.get_neigh_handler** %3, align 8
  %7 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %5, i32 0, i32 0
  %8 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %9 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nl_addr_get_prefixlen(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %5, i32 0, i32 1
  %13 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %14 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nl_addr_get_family(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @RTM_GETROUTE, align 4
  %18 = call %struct.nl_msg* @nlmsg_alloc_simple(i32 %17, i32 0)
  store %struct.nl_msg* %18, %struct.nl_msg** %4, align 8
  %19 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %20 = icmp eq %struct.nl_msg* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %70

24:                                               ; preds = %1
  %25 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %26 = load i32, i32* @NLMSG_ALIGNTO, align 4
  %27 = call i32 @nlmsg_append(%struct.nl_msg* %25, %struct.rtmsg* %5, i32 8, i32 %26)
  %28 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %29 = load i32, i32* @RTA_DST, align 4
  %30 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %31 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nla_put_addr(%struct.nl_msg* %28, i32 %29, i32 %32)
  %34 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %35 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %40 = load i32, i32* @RTA_OIF, align 4
  %41 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %42 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @nla_put_u32(%struct.nl_msg* %39, i32 %40, i64 %43)
  br label %45

45:                                               ; preds = %38, %24
  %46 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %47 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %50 = call i32 @nl_send_auto_complete(i32 %48, %struct.nl_msg* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %52 = call i32 @nlmsg_free(%struct.nl_msg* %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %70

57:                                               ; preds = %45
  %58 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %59 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NL_CB_VALID, align 4
  %62 = load i32, i32* @NL_CB_CUSTOM, align 4
  %63 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %64 = call i32 @nl_socket_modify_cb(i32 %60, i32 %61, i32 %62, i32* @get_route_cb, %struct.get_neigh_handler* %63)
  %65 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %3, align 8
  %66 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @nl_recvmsgs_default(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %57, %55, %21
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @nl_addr_get_prefixlen(i32) #1

declare dso_local i32 @nl_addr_get_family(i32) #1

declare dso_local %struct.nl_msg* @nlmsg_alloc_simple(i32, i32) #1

declare dso_local i32 @nlmsg_append(%struct.nl_msg*, %struct.rtmsg*, i32, i32) #1

declare dso_local i32 @nla_put_addr(%struct.nl_msg*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.nl_msg*, i32, i64) #1

declare dso_local i32 @nl_send_auto_complete(i32, %struct.nl_msg*) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

declare dso_local i32 @nl_socket_modify_cb(i32, i32, i32, i32*, %struct.get_neigh_handler*) #1

declare dso_local i32 @nl_recvmsgs_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
