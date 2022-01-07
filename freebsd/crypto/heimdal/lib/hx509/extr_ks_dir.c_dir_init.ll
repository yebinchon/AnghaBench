; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_dir.c_dir_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_dir.c_dir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No such file %s\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i32, i8*, i32)* @dir_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_init(i32 %0, i32 %1, i8** %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8**, i8*** %10, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i32 @stat(i8* %17, %struct.stat* %14)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @hx509_set_error_string(i32 %22, i32 0, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %7, align 4
  br label %50

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @S_ISDIR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENOTDIR, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @hx509_set_error_string(i32 %33, i32 0, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @ENOTDIR, align 4
  store i32 %37, i32* %7, align 4
  br label %50

38:                                               ; preds = %27
  %39 = load i8*, i8** %12, align 8
  %40 = call i8* @strdup(i8* %39)
  %41 = load i8**, i8*** %10, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @hx509_clear_error_string(i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %7, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %45, %32, %21
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
