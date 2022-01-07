; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_addrs.c_gethostname_fallback.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_addrs.c_gethostname_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.hostent = type { i32, i32, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"gethostname: %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gethostbyname %s: %s\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_6__*)* @gethostname_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gethostname_fallback(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hostent*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = trunc i64 %12 to i32
  %16 = call i64 @gethostname(i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i64, i64* @errno, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @strerror(i64 %22)
  %24 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %20, i64 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %98

26:                                               ; preds = %2
  %27 = call %struct.hostent* @roken_gethostbyname(i8* %14)
  store %struct.hostent* %27, %struct.hostent** %9, align 8
  %28 = load %struct.hostent*, %struct.hostent** %9, align 8
  %29 = icmp eq %struct.hostent* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @strerror(i64 %34)
  %36 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %32, i64 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %35)
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %98

38:                                               ; preds = %26
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = call %struct.TYPE_7__* @malloc(i32 24)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp eq %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = load i64, i64* @ENOMEM, align 8
  %51 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %49, i64 %50, i8* %53)
  %55 = load i64, i64* @ENOMEM, align 8
  store i64 %55, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %98

56:                                               ; preds = %38
  %57 = load %struct.hostent*, %struct.hostent** %9, align 8
  %58 = getelementptr inbounds %struct.hostent, %struct.hostent* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.hostent*, %struct.hostent** %9, align 8
  %83 = getelementptr inbounds %struct.hostent, %struct.hostent* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hostent*, %struct.hostent** %9, align 8
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @krb5_data_copy(%struct.TYPE_8__* %81, i32 %84, i32 %87)
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %56
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = call i32 @free(%struct.TYPE_7__* %94)
  %96 = load i64, i64* %6, align 8
  store i64 %96, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %98

97:                                               ; preds = %56
  store i64 0, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %91, %48, %30, %18
  %99 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local %struct.hostent* @roken_gethostbyname(i8*) #2

declare dso_local %struct.TYPE_7__* @malloc(i32) #2

declare dso_local i32 @N_(i8*, i8*) #2

declare dso_local i64 @krb5_data_copy(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
