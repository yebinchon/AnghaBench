; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_lst = type { i32, i8*, i64, %struct.env_lst* }

@env_default.nep = internal global %struct.env_lst* null, align 8
@envlisthead = common dso_local global %struct.env_lst zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @env_default(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.env_lst* @envlisthead, %struct.env_lst** @env_default.nep, align 8
  store i8* null, i8** %3, align 8
  br label %36

9:                                                ; preds = %2
  %10 = load %struct.env_lst*, %struct.env_lst** @env_default.nep, align 8
  %11 = icmp ne %struct.env_lst* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %33, %12
  %14 = load %struct.env_lst*, %struct.env_lst** @env_default.nep, align 8
  %15 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %14, i32 0, i32 3
  %16 = load %struct.env_lst*, %struct.env_lst** %15, align 8
  store %struct.env_lst* %16, %struct.env_lst** @env_default.nep, align 8
  %17 = icmp ne %struct.env_lst* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.env_lst*, %struct.env_lst** @env_default.nep, align 8
  %20 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.env_lst*, %struct.env_lst** @env_default.nep, align 8
  %25 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.env_lst*, %struct.env_lst** @env_default.nep, align 8
  %31 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %3, align 8
  br label %36

33:                                               ; preds = %23, %18
  br label %13

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %9
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %29, %8
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
