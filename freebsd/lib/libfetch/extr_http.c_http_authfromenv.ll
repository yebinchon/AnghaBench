; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_authfromenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_authfromenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @http_authfromenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_authfromenv(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @fetch_syserr()
  store i32 -1, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %78

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = icmp eq i32* %26, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @fetch_syserr()
  br label %78

32:                                               ; preds = %22
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 58)
  store i8* %36, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %78

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @strdup(i8* %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = icmp eq i32* %43, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 (...) @fetch_syserr()
  br label %78

49:                                               ; preds = %39
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 58)
  store i8* %53, i8** %8, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %78

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @strdup(i8* %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = icmp eq i32* %60, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 (...) @fetch_syserr()
  br label %78

66:                                               ; preds = %56
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @strdup(i8* %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = icmp eq i32* %71, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = call i32 (...) @fetch_syserr()
  br label %78

77:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %75, %64, %55, %47, %38, %30, %21
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = call i32 @clean_http_auth_params(%struct.TYPE_4__* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fetch_syserr(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @clean_http_auth_params(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
