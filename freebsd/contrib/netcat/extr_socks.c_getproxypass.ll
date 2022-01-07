; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_socks.c_getproxypass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_socks.c_getproxypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getproxypass.pw = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"Proxy password for %s@%s: \00", align 1
@RPP_REQUIRE_TTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to read proxy passphrase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @getproxypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getproxypass(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @snprintf(i8* %6, i32 512, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8)
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %11 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %12 = call i32* @readpassphrase(i8* %10, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @getproxypass.pw, i64 0, i64 0), i32 256, i32 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @getproxypass.pw, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @readpassphrase(i8*, i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
