; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_gettermname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_gettermname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gettermname.tnamep = internal global i8** null, align 8
@gettermname.next = internal global i8** null, align 8
@resettermname = common dso_local global i64 0, align 8
@unknown = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@termbuf = common dso_local global i32 0, align 4
@name_unknown = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @gettermname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettermname() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @resettermname, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %49

5:                                                ; preds = %0
  store i64 0, i64* @resettermname, align 8
  %6 = load i8**, i8*** @gettermname.tnamep, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i8**, i8*** @gettermname.tnamep, align 8
  %10 = load i8**, i8*** @unknown, align 8
  %11 = icmp ne i8** %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8**, i8*** @gettermname.tnamep, align 8
  %14 = call i32 @free(i8** %13)
  br label %15

15:                                               ; preds = %12, %8, %5
  %16 = call i64 @env_getvalue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @telnet_setupterm(i8* %20, i32 1, i32* %2)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @termbuf, align 4
  %25 = load i8*, i8** %1, align 8
  %26 = call i8** @mklist(i32 %24, i8* %25)
  store i8** %26, i8*** @gettermname.tnamep, align 8
  br label %47

27:                                               ; preds = %19, %15
  %28 = load i8*, i8** %1, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8*, i8** %1, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = trunc i64 %32 to i32
  %34 = icmp sle i32 %33, 40
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %1, align 8
  %37 = load i8**, i8*** @unknown, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %1, align 8
  %40 = call i32 @strupr(i8* %39)
  br label %45

41:                                               ; preds = %30, %27
  %42 = load i8*, i8** @name_unknown, align 8
  %43 = load i8**, i8*** @unknown, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i8**, i8*** @unknown, align 8
  store i8** %46, i8*** @gettermname.tnamep, align 8
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i8**, i8*** @gettermname.tnamep, align 8
  store i8** %48, i8*** @gettermname.next, align 8
  br label %49

49:                                               ; preds = %47, %0
  %50 = load i8**, i8*** @gettermname.next, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8**, i8*** @gettermname.tnamep, align 8
  store i8** %54, i8*** @gettermname.next, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i8**, i8*** @gettermname.next, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** @gettermname.next, align 8
  %58 = load i8*, i8** %56, align 8
  ret i8* %58
}

declare dso_local i32 @free(i8**) #1

declare dso_local i64 @env_getvalue(i8*) #1

declare dso_local i64 @telnet_setupterm(i8*, i32, i32*) #1

declare dso_local i8** @mklist(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strupr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
