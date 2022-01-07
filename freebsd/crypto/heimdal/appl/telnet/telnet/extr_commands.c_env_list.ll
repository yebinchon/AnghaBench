; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.env_lst* }
%struct.env_lst = type { i8*, i8*, i64, %struct.env_lst* }

@envlisthead = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"%c %-20s %s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_list() #0 {
  %1 = alloca %struct.env_lst*, align 8
  %2 = load %struct.env_lst*, %struct.env_lst** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @envlisthead, i32 0, i32 0), align 8
  store %struct.env_lst* %2, %struct.env_lst** %1, align 8
  br label %3

3:                                                ; preds = %21, %0
  %4 = load %struct.env_lst*, %struct.env_lst** %1, align 8
  %5 = icmp ne %struct.env_lst* %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load %struct.env_lst*, %struct.env_lst** %1, align 8
  %8 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 42, i32 32
  %13 = trunc i32 %12 to i8
  %14 = load %struct.env_lst*, %struct.env_lst** %1, align 8
  %15 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.env_lst*, %struct.env_lst** %1, align 8
  %18 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 signext %13, i8* %16, i8* %19)
  br label %21

21:                                               ; preds = %6
  %22 = load %struct.env_lst*, %struct.env_lst** %1, align 8
  %23 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %22, i32 0, i32 3
  %24 = load %struct.env_lst*, %struct.env_lst** %23, align 8
  store %struct.env_lst* %24, %struct.env_lst** %1, align 8
  br label %3

25:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8*, i8 signext, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
