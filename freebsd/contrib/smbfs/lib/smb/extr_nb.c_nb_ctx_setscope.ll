; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_ctx_setscope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_ctx_setscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_ctx = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"scope '%s' is too long\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_ctx_setscope(%struct.nb_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nb_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.nb_ctx* %0, %struct.nb_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp uge i64 %9, 128
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @smb_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0, i8* %12)
  %14 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @free(i32* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  %28 = call i32* @malloc(i64 %27)
  %29 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %25
  %38 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @nls_str_upper(i32* %40, i8* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %35, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @smb_error(i8*, i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @nls_str_upper(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
