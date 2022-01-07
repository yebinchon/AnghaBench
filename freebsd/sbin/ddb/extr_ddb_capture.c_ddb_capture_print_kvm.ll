; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_print_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture_print_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X_DB_CAPTURE_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"kvm: unable to read db_capture_buf\00", align 1
@X_DB_CAPTURE_BUFOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"kvm: unable to read db_capture_bufoff\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"malloc: db_capture_bufoff (%u)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"kvm: unable to read buffer\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ddb_capture_print_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_capture_print_kvm(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @X_DB_CAPTURE_BUF, align 4
  %8 = call i64 @kread_symbol(i32* %6, i32 %7, i8** %5, i32 8, i32 0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @X_DB_CAPTURE_BUFOFF, align 4
  %15 = call i64 @kread_symbol(i32* %13, i32 %14, i8** %3, i32 8, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i8* @malloc(i8* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @err(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32 @bzero(i8* %29, i8* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i64 @kread(i32* %33, i8* %34, i8* %35, i8* %36, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @free(i8* %44)
  ret void
}

declare dso_local i64 @kread_symbol(i32*, i32, i8**, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @malloc(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @bzero(i8*, i8*) #1

declare dso_local i64 @kread(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
