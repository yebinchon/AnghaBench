; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"%s -s [-vVd] [-S size] [-C count] [-a addr] [-p port]\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"%s -c [-vVd] [-S size] [-C count] [-I addr] -a addr [-p port]\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09-c\09\09client side\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\09-I\09\09Source address to bind to for client.\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"\09-s\09\09server side.  To bind to any address with IPv6 use -a ::0\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\09-v\09\09display ping data to stdout\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\09-V\09\09validate ping data\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09-d\09\09debug printfs\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\09-S size \09ping data size\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\09-C count\09ping count times\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09-a addr\09\09address\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"\09-p port\09\09port\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"\09-P\09\09persistent server mode allowing multiple connections\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @basename(i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @basename(i8* %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
