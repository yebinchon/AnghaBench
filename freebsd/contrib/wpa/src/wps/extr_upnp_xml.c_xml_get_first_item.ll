; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_upnp_xml.c_xml_get_first_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_upnp_xml.c_xml_get_first_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xml_get_first_item(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @os_strlen(i8* %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %49, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @xml_next_tag(i8* %16, i8** %8, i8** %9, i8** %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %90

20:                                               ; preds = %15
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @os_strncasecmp(i8* %22, i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 47
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 62
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @isgraph(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40, %32
  br label %50

49:                                               ; preds = %40, %27, %20
  br label %15

50:                                               ; preds = %48
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %10, align 8
  br label %52

52:                                               ; preds = %64, %50
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %10, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 60
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  br label %52

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = add nsw i64 1, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @os_zalloc(i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store i8* null, i8** %3, align 8
  br label %90

79:                                               ; preds = %67
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @os_memcpy(i8* %80, i8* %81, i32 %87)
  %89 = load i8*, i8** %11, align 8
  store i8* %89, i8** %3, align 8
  br label %90

90:                                               ; preds = %79, %78, %19
  %91 = load i8*, i8** %3, align 8
  ret i8* %91
}

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i64 @xml_next_tag(i8*, i8**, i8**, i8**) #1

declare dso_local i32 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @isgraph(i8 signext) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
