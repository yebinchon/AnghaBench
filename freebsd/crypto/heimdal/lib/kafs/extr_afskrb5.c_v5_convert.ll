; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_v5_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_v5_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_token = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"libkafs\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"afs-use-524\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"2b\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i8*, %struct.kafs_token*)* @v5_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v5_convert(i32 %0, i32 %1, i32* %2, i32 %3, i8* %4, %struct.kafs_token* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.kafs_token*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.kafs_token* %5, %struct.kafs_token** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %7, align 4
  br label %53

23:                                               ; preds = %6
  %24 = load i8*, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = call i32 @_kafs_foldup(i8* %24, i8* %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 @krb5_appdefault_string(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %16)
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i8*, i8** %16, align 8
  %33 = call i64 @strcasecmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = load i8*, i8** %16, align 8
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %23
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %43 = call i32 @v5_to_kt(i32* %40, i32 %41, %struct.kafs_token* %42, i32 1)
  store i32 %43, i32* %14, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %48 = call i32 @v5_to_kt(i32* %45, i32 %46, %struct.kafs_token* %47, i32 0)
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i8*, i8** %16, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %21
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @_kafs_foldup(i8*, i8*) #1

declare dso_local i32 @krb5_appdefault_string(i32, i8*, i8*, i8*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @v5_to_kt(i32*, i32, %struct.kafs_token*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
