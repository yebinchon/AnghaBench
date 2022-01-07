; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_FUZ_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_FUZ_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Usage :\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"      %s [args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Arguments :\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c" -i#    : Nb of tests (default:%u) \0A\00", align 1
@nbTestsDefault = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c" -s#    : Select seed (default:prompt user)\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c" -t#    : Select starting test number (default:0)\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c" -P#    : Select compressibility in %% (default:%i%%)\0A\00", align 1
@FUZ_COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c" -v     : verbose\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" -p     : pause at the end\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c" -h     : display help and exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @FUZ_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FUZ_usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %8 = load i32, i32* @nbTestsDefault, align 4
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %8)
  %10 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %12 = load i32, i32* @FUZ_COMPRESSIBILITY_DEFAULT, align 4
  %13 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %12)
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
