; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_username.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i64 }

@username.myname = internal global i8* null, align 8
@RealUid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"554 5.3.0 Who are you?\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"postmaster\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c",;:/|\22\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @username() #0 {
  %1 = alloca %struct.passwd*, align 8
  %2 = alloca i64, align 8
  %3 = load i8*, i8** @username.myname, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %73

5:                                                ; preds = %0
  %6 = call i8* (...) @getlogin()
  store i8* %6, i8** @username.myname, align 8
  %7 = load i8*, i8** @username.myname, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load i8*, i8** @username.myname, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %9, %5
  %16 = load i64, i64* @RealUid, align 8
  %17 = call %struct.passwd* @sm_getpwuid(i64 %16)
  store %struct.passwd* %17, %struct.passwd** %1, align 8
  %18 = load %struct.passwd*, %struct.passwd** %1, align 8
  %19 = icmp ne %struct.passwd* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.passwd*, %struct.passwd** %1, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** @username.myname, align 8
  br label %24

24:                                               ; preds = %20, %15
  br label %50

25:                                               ; preds = %9
  %26 = load i64, i64* @RealUid, align 8
  store i64 %26, i64* %2, align 8
  %27 = load i8*, i8** @username.myname, align 8
  %28 = call %struct.passwd* @sm_getpwnam(i8* %27)
  store %struct.passwd* %28, %struct.passwd** %1, align 8
  %29 = icmp eq %struct.passwd* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %2, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i64, i64* %2, align 8
  %35 = load %struct.passwd*, %struct.passwd** %1, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33, %25
  %40 = load i64, i64* %2, align 8
  %41 = call %struct.passwd* @sm_getpwuid(i64 %40)
  store %struct.passwd* %41, %struct.passwd** %1, align 8
  %42 = load %struct.passwd*, %struct.passwd** %1, align 8
  %43 = icmp ne %struct.passwd* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.passwd*, %struct.passwd** %1, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** @username.myname, align 8
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %33, %30
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i8*, i8** @username.myname, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @username.myname, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %50
  %60 = call i32 @syserr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** @username.myname, align 8
  br label %72

61:                                               ; preds = %53
  %62 = load i8*, i8** @username.myname, align 8
  %63 = call i32* @strpbrk(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8*, i8** @username.myname, align 8
  %67 = call i8* @addquotes(i8* %66, i32* null)
  store i8* %67, i8** @username.myname, align 8
  br label %71

68:                                               ; preds = %61
  %69 = load i8*, i8** @username.myname, align 8
  %70 = call i8* @sm_pstrdup_x(i8* %69)
  store i8* %70, i8** @username.myname, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %59
  br label %73

73:                                               ; preds = %72, %0
  %74 = load i8*, i8** @username.myname, align 8
  ret i8* %74
}

declare dso_local i8* @getlogin(...) #1

declare dso_local %struct.passwd* @sm_getpwuid(i64) #1

declare dso_local %struct.passwd* @sm_getpwnam(i8*) #1

declare dso_local i32 @syserr(i8*) #1

declare dso_local i32* @strpbrk(i8*, i8*) #1

declare dso_local i8* @addquotes(i8*, i32*) #1

declare dso_local i8* @sm_pstrdup_x(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
