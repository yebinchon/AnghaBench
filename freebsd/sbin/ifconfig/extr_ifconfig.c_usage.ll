; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, %struct.option* }

@opts = common dso_local global %struct.option* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [290 x i8] c"usage: ifconfig [-f type:format] %sinterface address_family\0A                [address [dest_address]] [parameters]\0A       ifconfig interface create\0A       ifconfig -a %s[-d] [-m] [-u] [-v] [address_family]\0A       ifconfig -l [-d] [-u] [address_family]\0A       ifconfig %s[-d] [-m] [-u] [-v]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct.option*, align 8
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %3, align 16
  %4 = load %struct.option*, %struct.option** @opts, align 8
  store %struct.option* %4, %struct.option** %2, align 8
  br label %5

5:                                                ; preds = %16, %0
  %6 = load %struct.option*, %struct.option** %2, align 8
  %7 = icmp ne %struct.option* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = load %struct.option*, %struct.option** %2, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strlcat(i8* %9, i8* %12, i32 1024)
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = call i32 @strlcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1024)
  br label %16

16:                                               ; preds = %8
  %17 = load %struct.option*, %struct.option** %2, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 1
  %19 = load %struct.option*, %struct.option** %18, align 8
  store %struct.option* %19, %struct.option** %2, align 8
  br label %5

20:                                               ; preds = %5
  %21 = load i32, i32* @stderr, align 4
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %25 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %23, i8* %24)
  %26 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
