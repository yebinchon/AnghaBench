; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_key.c_load_trusted_key_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_key.c_load_trusted_key_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@trust_store = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @load_trusted_key_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_trusted_key_id(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8**, i8*** @trust_store, align 8
  store i8** %13, i8*** %6, align 8
  br label %14

14:                                               ; preds = %34, %1
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = trunc i64 %10 to i32
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @snprintf(i8* %12, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp uge i64 %24, %10
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @R_OK, align 4
  %29 = call i64 @access(i8* %12, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32* @load_key_file(i8* %12)
  store i32* %32, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %38

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %6, align 8
  br label %14

37:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %31, %26
  %39 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32* @load_key_file(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
