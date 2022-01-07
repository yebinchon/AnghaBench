; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_report_expiration.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_report_expiration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32 (i32, i32*, i32*, i8*, i32, i32*)*, i32*, i8*, i32)* @report_expiration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_expiration(i32 %0, i32 (i32, i32*, i32*, i8*, i32, i32*)* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32*, i32*, i8*, i32, i32*)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 (i32, i32*, i32*, i8*, i32, i32*)* %1, i32 (i32, i32*, i32*, i8*, i32, i32*)** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i32 @ctime(i32* %10)
  %14 = call i64 @asprintf(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %11, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  br label %28

20:                                               ; preds = %16
  %21 = load i32 (i32, i32*, i32*, i8*, i32, i32*)*, i32 (i32, i32*, i32*, i8*, i32, i32*)** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 %21(i32 %22, i32* %23, i32* null, i8* %24, i32 0, i32* null)
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @free(i8* %26)
  br label %28

28:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
