; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_gettermname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_gettermname.c"
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
  br i1 %4, label %5, label %47

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
  %16 = call i8* @env_getvalue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %1, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @setupterm(i8* %19, i32 1, i32* %2)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @termbuf, align 4
  %24 = load i8*, i8** %1, align 8
  %25 = call i8** @mklist(i32 %23, i8* %24)
  store i8** %25, i8*** @gettermname.tnamep, align 8
  br label %45

26:                                               ; preds = %18, %15
  %27 = load i8*, i8** %1, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = icmp sle i32 %31, 40
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %1, align 8
  %35 = load i8**, i8*** @unknown, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @upcase(i8* %37)
  br label %43

39:                                               ; preds = %29, %26
  %40 = load i8*, i8** @name_unknown, align 8
  %41 = load i8**, i8*** @unknown, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i8**, i8*** @unknown, align 8
  store i8** %44, i8*** @gettermname.tnamep, align 8
  br label %45

45:                                               ; preds = %43, %22
  %46 = load i8**, i8*** @gettermname.tnamep, align 8
  store i8** %46, i8*** @gettermname.next, align 8
  br label %47

47:                                               ; preds = %45, %0
  %48 = load i8**, i8*** @gettermname.next, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i8**, i8*** @gettermname.tnamep, align 8
  store i8** %52, i8*** @gettermname.next, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i8**, i8*** @gettermname.next, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** @gettermname.next, align 8
  %56 = load i8*, i8** %54, align 8
  ret i8* %56
}

declare dso_local i32 @free(i8**) #1

declare dso_local i8* @env_getvalue(i8*) #1

declare dso_local i64 @setupterm(i8*, i32, i32*) #1

declare dso_local i8** @mklist(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @upcase(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
