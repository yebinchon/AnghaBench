; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_subject_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_subject_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_connection*, i8*, i8*, i8*, i8*)* @tls_connection_set_subject_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connection_set_subject_match(%struct.tls_connection* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tls_connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %13 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @os_free(i32* %14)
  %16 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %17 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @os_strdup(i8* %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %25 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %27 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %96

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %5
  %33 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %34 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @os_free(i32* %35)
  %37 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @os_strdup(i8* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %46 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %48 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %96

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %55 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @os_free(i32* %56)
  %58 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %59 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @os_strdup(i8* %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %67 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %69 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  br label %96

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %76 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @os_free(i32* %77)
  %79 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %80 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load i8*, i8** %11, align 8
  %85 = call i8* @os_strdup(i8* %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %88 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  %89 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %90 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  store i32 -1, i32* %6, align 4
  br label %96

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %74
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %93, %72, %51, %30
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
