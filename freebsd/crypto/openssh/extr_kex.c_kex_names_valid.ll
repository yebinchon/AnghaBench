; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_names_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_names_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unsupported KEX algorithm \22%.100s\22\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"kex names ok: [%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_names_valid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %5, align 8
  store i8* %16, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %48

19:                                               ; preds = %14
  %20 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %41, %19
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = load i8*, i8** %6, align 8
  %33 = call i32* @kex_alg_by_name(i8* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @free(i8* %38)
  store i32 0, i32* %2, align 4
  br label %48

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %6, align 8
  br label %21

43:                                               ; preds = %29
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @debug3(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @free(i8* %46)
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %35, %18, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32* @kex_alg_by_name(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @debug3(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
