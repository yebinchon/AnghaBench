; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_crypt.c_login_setcryptfmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_crypt.c_login_setcryptfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"passwd_format\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"CRYPT_DEBUG\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"login_setcryptfmt: passwd_format = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @login_setcryptfmt(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @login_getcapstr(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %10, i32* null)
  store i8* %11, i8** %8, align 8
  %12 = call i32* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %4, align 8
  br label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @crypt_set_format(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %4, align 8
  br label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %29, %27, %21
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i8* @login_getcapstr(i32*, i8*, i8*, i32*) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @crypt_set_format(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
