; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_parse_dns_qsection.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_parse_dns_qsection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_query = type { i8*, i8*, i32*, %struct.dns_query* }

@MAXDNAME = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dns_query* (i32*, i32, i32**, i32)* @parse_dns_qsection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dns_query* @parse_dns_qsection(i32* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca %struct.dns_query*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dns_query*, align 8
  %11 = alloca %struct.dns_query*, align 8
  %12 = alloca %struct.dns_query*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @MAXDNAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  store i32 1, i32* %13, align 4
  store %struct.dns_query* null, %struct.dns_query** %10, align 8
  store %struct.dns_query* null, %struct.dns_query** %12, align 8
  br label %22

22:                                               ; preds = %97, %4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %22
  %27 = call %struct.dns_query* @calloc(i32 1, i32 32)
  store %struct.dns_query* %27, %struct.dns_query** %11, align 8
  %28 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  %29 = icmp eq %struct.dns_query* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.dns_query*, %struct.dns_query** %10, align 8
  %32 = call i32 @free_dns_query(%struct.dns_query* %31)
  store %struct.dns_query* null, %struct.dns_query** %5, align 8
  store i32 1, i32* %17, align 4
  br label %103

33:                                               ; preds = %26
  %34 = load %struct.dns_query*, %struct.dns_query** %10, align 8
  %35 = icmp eq %struct.dns_query* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  store %struct.dns_query* %37, %struct.dns_query** %10, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load %struct.dns_query*, %struct.dns_query** %12, align 8
  %40 = icmp ne %struct.dns_query* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  %43 = load %struct.dns_query*, %struct.dns_query** %12, align 8
  %44 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %43, i32 0, i32 3
  store %struct.dns_query* %42, %struct.dns_query** %44, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32**, i32*** %8, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = trunc i64 %19 to i32
  %54 = call i32 @dn_expand(i32* %46, i32* %50, i32* %52, i8* %21, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.dns_query*, %struct.dns_query** %10, align 8
  %59 = call i32 @free_dns_query(%struct.dns_query* %58)
  store %struct.dns_query* null, %struct.dns_query** %5, align 8
  store i32 1, i32* %17, align 4
  br label %103

60:                                               ; preds = %45
  %61 = call i32* @strdup(i8* %21)
  %62 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  %63 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  %65 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.dns_query*, %struct.dns_query** %10, align 8
  %70 = call i32 @free_dns_query(%struct.dns_query* %69)
  store %struct.dns_query* null, %struct.dns_query** %5, align 8
  store i32 1, i32* %17, align 4
  br label %103

71:                                               ; preds = %60
  %72 = load i32, i32* %14, align 4
  %73 = load i32**, i32*** %8, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %73, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = call i8* @_getshort(i32* %78)
  %80 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  %81 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @INT16SZ, align 4
  %83 = load i32**, i32*** %8, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %83, align 8
  %87 = load i32**, i32*** %8, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = call i8* @_getshort(i32* %88)
  %90 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  %91 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @INT16SZ, align 4
  %93 = load i32**, i32*** %8, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %93, align 8
  br label %97

97:                                               ; preds = %71
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = load %struct.dns_query*, %struct.dns_query** %11, align 8
  store %struct.dns_query* %100, %struct.dns_query** %12, align 8
  br label %22

101:                                              ; preds = %22
  %102 = load %struct.dns_query*, %struct.dns_query** %10, align 8
  store %struct.dns_query* %102, %struct.dns_query** %5, align 8
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %101, %68, %57, %30
  %104 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load %struct.dns_query*, %struct.dns_query** %5, align 8
  ret %struct.dns_query* %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dns_query* @calloc(i32, i32) #2

declare dso_local i32 @free_dns_query(%struct.dns_query*) #2

declare dso_local i32 @dn_expand(i32*, i32*, i32*, i8*, i32) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i8* @_getshort(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
