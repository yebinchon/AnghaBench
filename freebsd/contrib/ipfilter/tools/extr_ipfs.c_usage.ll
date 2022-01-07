; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipfs.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipfs.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"usage: %s [-nv] -l\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"usage: %s [-nv] -u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"usage: %s [-nv] [-d <dir>] -R\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"usage: %s [-nv] [-d <dir>] -W\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"usage: %s [-nNSv] [-f <file>] -r\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"usage: %s [-nNSv] [-f <file>] -w\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"usage: %s [-nNSv] -f <filename> -i <if1>,<if2>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = load i8*, i8** @progname, align 8
  %6 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = load i8*, i8** @progname, align 8
  %9 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** @progname, align 8
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** @progname, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @progname, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** @progname, align 8
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

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
