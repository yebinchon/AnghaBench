; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [598 x i8] c"usage:\09bectl {-h | -? | subcommand [args...]}\0A\09bectl activate [-t] beName\0A\09bectl check\0A\09bectl create [-r] [-e {nonActiveBe | beName@snapshot}] beName\0A\09bectl create [-r] beName@snapshot\0A\09bectl destroy [-F] {beName | beName@snapshot}\0A\09bectl export sourceBe\0A\09bectl import targetBe\0A\09bectl jail {-b | -U} [{-o key=value | -u key}]... {jailID | jailName}\0A\09      bootenv [utility [argument ...]]\0A\09bectl list [-DHas] [{-c property | -C property}]\0A\09bectl mount beName [mountpoint]\0A\09bectl rename origBeName newBeName\0A\09bectl {ujail | unjail} {jailID | jailName} bootenv\0A\09bectl {umount | unmount} [-f] beName\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32*, i32** @stdout, align 8
  br label %10

8:                                                ; preds = %1
  %9 = load i32*, i32** @stderr, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32* [ %7, %6 ], [ %9, %8 ]
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fprintf(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([598 x i8], [598 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @EX_USAGE, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 0, %16 ], [ %18, %17 ]
  ret i32 %20
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
