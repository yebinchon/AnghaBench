; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c__kafs_try_get_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c__kafs_try_get_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { {}*, i8* (%struct.kafs_data*, i32)*, i32 (%struct.kafs_data*, i8*)*, i32 }
%struct.kafs_token = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s tried afs%s%s@%s -> %s (%d)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kafs_verbose_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kafs_data*, i8*, i8*, i8*, i32, %struct.kafs_token*)* @_kafs_try_get_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_kafs_try_get_cred(%struct.kafs_data* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.kafs_token* %5) #0 {
  %7 = alloca %struct.kafs_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kafs_token*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.kafs_data* %0, %struct.kafs_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.kafs_token* %5, %struct.kafs_token** %12, align 8
  %16 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %17 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.kafs_data*, i8*, i8*, i8*, i32, %struct.kafs_token*)**
  %19 = load i32 (%struct.kafs_data*, i8*, i8*, i8*, i32, %struct.kafs_token*)*, i32 (%struct.kafs_data*, i8*, i8*, i8*, i32, %struct.kafs_token*)** %18, align 8
  %20 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.kafs_token*, %struct.kafs_token** %12, align 8
  %26 = call i32 %19(%struct.kafs_data* %20, i8* %21, i8* %22, i8* %23, i32 %24, %struct.kafs_token* %25)
  store i32 %26, i32* %13, align 4
  br i1 true, label %27, label %73

27:                                               ; preds = %6
  %28 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %29 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %28, i32 0, i32 1
  %30 = load i8* (%struct.kafs_data*, i32)*, i8* (%struct.kafs_data*, i32)** %29, align 8
  %31 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i8* %30(%struct.kafs_data* %31, i32 %32)
  store i8* %33, i8** %14, align 8
  %34 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %35 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i8*, i8** %9, align 8
  br label %46

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i8* [ %44, %43 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %45 ]
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %14, align 8
  br label %54

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i8* [ %52, %51 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %53 ]
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %40, i8* %47, i8* %48, i8* %55, i32 %56)
  %58 = load i32, i32* @kafs_verbose_ctx, align 4
  %59 = load i8*, i8** %15, align 8
  %60 = call i32 @kafs_verbose(i32 %58, i8* %59)
  %61 = load i8*, i8** %14, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %65 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %64, i32 0, i32 2
  %66 = load i32 (%struct.kafs_data*, i8*)*, i32 (%struct.kafs_data*, i8*)** %65, align 8
  %67 = load %struct.kafs_data*, %struct.kafs_data** %7, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 %66(%struct.kafs_data* %67, i8* %68)
  br label %70

70:                                               ; preds = %63, %54
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %6
  %74 = load i32, i32* %13, align 4
  ret i32 %74
}

declare dso_local i32 @kafs_verbose(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
