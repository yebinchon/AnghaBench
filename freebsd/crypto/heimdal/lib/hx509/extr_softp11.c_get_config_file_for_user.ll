; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_get_config_file_for_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_get_config_file_for_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"SOFTPKCS11RC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s/.soft-token.rc\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/etc/soft-token.rc\00", align 1
@CSIDL_APPDATA = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_config_file_for_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_config_file_for_user() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  store i8* null, i8** %1, align 8
  store i8* null, i8** %2, align 8
  %4 = call i32 (...) @issuid()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %0
  %7 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i8*, i8** %1, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %1, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i8*, i8** %1, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = call i32 (...) @getuid()
  %23 = call %struct.passwd* @getpwuid(i32 %22)
  store %struct.passwd* %23, %struct.passwd** %3, align 8
  %24 = load %struct.passwd*, %struct.passwd** %3, align 8
  %25 = icmp ne %struct.passwd* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.passwd*, %struct.passwd** %3, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %18, %15
  %32 = load i8*, i8** %1, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i8*, i8** %2, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @asprintf(i8** %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %42

40:                                               ; preds = %34
  %41 = call i8* @strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i8* %41, i8** %1, align 8
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i8*, i8** %1, align 8
  ret i8* %44
}

declare dso_local i32 @issuid(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
