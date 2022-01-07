; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_xcrypt.c_pick_salt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_xcrypt.c_pick_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@pick_salt.salt = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @pick_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pick_salt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @pick_salt.salt, i64 0, i64 0), align 16
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @pick_salt.salt, i64 0, i64 0), i8** %1, align 8
  br label %48

10:                                               ; preds = %0
  %11 = call i32 @strlcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @pick_salt.salt, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 32)
  %12 = call i32 (...) @setpwent()
  br label %13

13:                                               ; preds = %44, %10
  %14 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %14, %struct.passwd** %2, align 8
  %15 = icmp ne %struct.passwd* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load %struct.passwd*, %struct.passwd** %2, align 8
  %18 = call i8* @shadow_pw(%struct.passwd* %17)
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 36
  br i1 %23, label %24, label %44

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i8* @strrchr(i8* %26, i8 signext 36)
  store i8* %27, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %5, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @MIN(i64 %37, i32 32)
  %39 = call i32 @strlcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @pick_salt.salt, i64 0, i64 0), i8* %36, i32 %38)
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @explicit_bzero(i8* %40, i32 %42)
  br label %46

44:                                               ; preds = %24, %16
  br label %13

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45, %29
  %47 = call i32 (...) @endpwent()
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @pick_salt.salt, i64 0, i64 0), i8** %1, align 8
  br label %48

48:                                               ; preds = %46, %9
  %49 = load i8*, i8** %1, align 8
  ret i8* %49
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @setpwent(...) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i8* @shadow_pw(%struct.passwd*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
