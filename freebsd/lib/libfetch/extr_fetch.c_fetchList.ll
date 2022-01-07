; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchList.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_ent = type { i32 }
%struct.url = type { i32 }

@SCHEME_FILE = common dso_local global i32 0, align 4
@SCHEME_FTP = common dso_local global i32 0, align 4
@SCHEME_HTTP = common dso_local global i32 0, align 4
@SCHEME_HTTPS = common dso_local global i32 0, align 4
@URL_BAD_SCHEME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.url_ent* @fetchList(%struct.url* %0, i8* %1) #0 {
  %3 = alloca %struct.url_ent*, align 8
  %4 = alloca %struct.url*, align 8
  %5 = alloca i8*, align 8
  store %struct.url* %0, %struct.url** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.url*, %struct.url** %4, align 8
  %7 = getelementptr inbounds %struct.url, %struct.url* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SCHEME_FILE, align 4
  %10 = call i64 @strcmp(i32 %8, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.url*, %struct.url** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.url_ent* @fetchListFile(%struct.url* %13, i8* %14)
  store %struct.url_ent* %15, %struct.url_ent** %3, align 8
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.url*, %struct.url** %4, align 8
  %18 = getelementptr inbounds %struct.url, %struct.url* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SCHEME_FTP, align 4
  %21 = call i64 @strcmp(i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.url*, %struct.url** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.url_ent* @fetchListFTP(%struct.url* %24, i8* %25)
  store %struct.url_ent* %26, %struct.url_ent** %3, align 8
  br label %55

27:                                               ; preds = %16
  %28 = load %struct.url*, %struct.url** %4, align 8
  %29 = getelementptr inbounds %struct.url, %struct.url* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SCHEME_HTTP, align 4
  %32 = call i64 @strcmp(i32 %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.url*, %struct.url** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call %struct.url_ent* @fetchListHTTP(%struct.url* %35, i8* %36)
  store %struct.url_ent* %37, %struct.url_ent** %3, align 8
  br label %55

38:                                               ; preds = %27
  %39 = load %struct.url*, %struct.url** %4, align 8
  %40 = getelementptr inbounds %struct.url, %struct.url* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SCHEME_HTTPS, align 4
  %43 = call i64 @strcmp(i32 %41, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.url*, %struct.url** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call %struct.url_ent* @fetchListHTTP(%struct.url* %46, i8* %47)
  store %struct.url_ent* %48, %struct.url_ent** %3, align 8
  br label %55

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @URL_BAD_SCHEME, align 4
  %54 = call i32 @url_seterr(i32 %53)
  store %struct.url_ent* null, %struct.url_ent** %3, align 8
  br label %55

55:                                               ; preds = %52, %45, %34, %23, %12
  %56 = load %struct.url_ent*, %struct.url_ent** %3, align 8
  ret %struct.url_ent* %56
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.url_ent* @fetchListFile(%struct.url*, i8*) #1

declare dso_local %struct.url_ent* @fetchListFTP(%struct.url*, i8*) #1

declare dso_local %struct.url_ent* @fetchListHTTP(%struct.url*, i8*) #1

declare dso_local i32 @url_seterr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
