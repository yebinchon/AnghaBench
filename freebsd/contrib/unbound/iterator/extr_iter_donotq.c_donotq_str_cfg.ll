; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_donotq.c_donotq_str_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_donotq.c_donotq_str_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_donotq = type { i32 }
%struct.sockaddr_storage = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"donotq: %s\00", align 1
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot parse donotquery netblock: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_donotq*, i8*)* @donotq_str_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @donotq_str_cfg(%struct.iter_donotq* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_donotq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iter_donotq* %0, %struct.iter_donotq** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @VERB_ALGO, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @verbose(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %14 = call i32 @netblockstrtoaddr(i8* %12, i32 %13, %struct.sockaddr_storage* %6, i32* %8, i32* %7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 0, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.iter_donotq*, %struct.iter_donotq** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @donotq_insert(%struct.iter_donotq* %20, %struct.sockaddr_storage* %6, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %28

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @netblockstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*, i32*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @donotq_insert(%struct.iter_donotq*, %struct.sockaddr_storage*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
