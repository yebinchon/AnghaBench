; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_dns_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_dns_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { i32, i32 }
%struct.msg_parse = type { i32 }
%struct.regional = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"malloc failure: allocating incoming dns_msg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dns_msg* @dns_alloc_msg(i32* %0, %struct.msg_parse* %1, %struct.regional* %2) #0 {
  %4 = alloca %struct.dns_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.msg_parse*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.dns_msg*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %9 = load %struct.regional*, %struct.regional** %7, align 8
  %10 = call i64 @regional_alloc(%struct.regional* %9, i32 8)
  %11 = inttoptr i64 %10 to %struct.dns_msg*
  store %struct.dns_msg* %11, %struct.dns_msg** %8, align 8
  %12 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %13 = icmp ne %struct.dns_msg* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.dns_msg* null, %struct.dns_msg** %4, align 8
  br label %31

15:                                               ; preds = %3
  %16 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %17 = call i32 @memset(%struct.dns_msg* %16, i32 0, i32 8)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %20 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %21 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %20, i32 0, i32 1
  %22 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  %23 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %22, i32 0, i32 0
  %24 = load %struct.regional*, %struct.regional** %7, align 8
  %25 = call i32 @parse_create_msg(i32* %18, %struct.msg_parse* %19, i32* null, i32* %21, i32* %23, %struct.regional* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %15
  %28 = call i32 @log_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.dns_msg* null, %struct.dns_msg** %4, align 8
  br label %31

29:                                               ; preds = %15
  %30 = load %struct.dns_msg*, %struct.dns_msg** %8, align 8
  store %struct.dns_msg* %30, %struct.dns_msg** %4, align 8
  br label %31

31:                                               ; preds = %29, %27, %14
  %32 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  ret %struct.dns_msg* %32
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.dns_msg*, i32, i32) #1

declare dso_local i32 @parse_create_msg(i32*, %struct.msg_parse*, i32*, i32*, i32*, %struct.regional*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
