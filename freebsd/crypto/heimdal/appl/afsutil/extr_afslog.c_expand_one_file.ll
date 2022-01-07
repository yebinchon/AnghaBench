; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_expand_one_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_expand_one_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expand_one_file.buf = internal global [1024 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @expand_one_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_one_file(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @fgets(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @expand_one_file.buf, i64 0, i64 0), i32 1024, i32* %8)
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @expand_one_file.buf, i64 0, i64 0), align 16
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 62
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @expand_one_file.buf, i64 0, i64 0), i8** %6, align 8
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @isspace(i8 zeroext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 35
  br label %31

31:                                               ; preds = %26, %21, %16
  %32 = phi i1 [ false, %21 ], [ false, %16 ], [ %30, %26 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %16

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i64 @strncmp(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @expand_one_file.buf, i64 0, i64 1), i8* %39, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @expand_one_file.buf, i64 0, i64 1), i8** %3, align 8
  br label %48

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %11
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @expand_one_file.buf, i64 0, i64 0), align 16
  br label %7

47:                                               ; preds = %7
  store i8* null, i8** %3, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i8*, i8** %3, align 8
  ret i8* %49
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
