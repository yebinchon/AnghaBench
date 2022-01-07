; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_ungetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_ungetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_INFO = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@conf_file_sum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.FILE_INFO*)* @lex_ungetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_ungetch(i32 %0, %struct.FILE_INFO* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.FILE_INFO*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.FILE_INFO* %1, %struct.FILE_INFO** %5, align 8
  %6 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %7 = icmp eq %struct.FILE_INFO* null, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %10 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %2
  %14 = load i32, i32* @EOF, align 4
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %8
  %16 = load i32, i32* @EOF, align 4
  %17 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %18 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EOF, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %15
  %26 = load i32, i32* @EOF, align 4
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %30 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %32 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %37 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @conf_file_sum, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* @conf_file_sum, align 4
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %43 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %48 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %47, i32 0, i32 1
  %49 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %50 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %49, i32 0, i32 2
  %51 = bitcast %struct.TYPE_2__* %48 to i8*
  %52 = bitcast %struct.TYPE_2__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 8 %52, i64 4, i1 false)
  %53 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %54 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  br label %56

56:                                               ; preds = %46, %41
  %57 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %58 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %63 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %56, %25, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
