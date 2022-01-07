; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dane.c_ldns_dane_create_tlsa_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dane.c_ldns_dane_create_tlsa_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_DNAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"X_%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\04_tcp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\04_udp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\05_sctp\00", align 1
@LDNS_STATUS_DANE_UNKNOWN_TRANSPORT = common dso_local global i32 0, align 4
@LDNS_STATUS_DOMAINNAME_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dane_create_tlsa_owner(i32** %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = icmp ne i32** %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @ldns_rdf_get_type(i32* %26)
  %28 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = sub i64 %36, 1
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %38, i8* %39, align 16
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %74 [
    i32 129, label %41
    i32 128, label %52
    i32 130, label %63
  ]

41:                                               ; preds = %4
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i8, i8* %17, i64 %42
  %44 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %43, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %12, align 8
  br label %76

52:                                               ; preds = %4
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i8, i8* %17, i64 %53
  %55 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %54, i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %12, align 8
  br label %76

63:                                               ; preds = %4
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i8, i8* %17, i64 %64
  %66 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %65, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %12, align 8
  br label %76

74:                                               ; preds = %4
  %75 = load i32, i32* @LDNS_STATUS_DANE_UNKNOWN_TRANSPORT, align 4
  store i32 %75, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %111

76:                                               ; preds = %63, %52, %41
  %77 = load i64, i64* %12, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @ldns_rdf_size(i32* %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 %77, %80
  %82 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @LDNS_STATUS_DOMAINNAME_OVERFLOW, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %111

87:                                               ; preds = %76
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds i8, i8* %17, i64 %88
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @ldns_rdf_data(i32* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @ldns_rdf_size(i32* %92)
  %94 = call i32 @memcpy(i8* %89, i32 %91, i32 %93)
  %95 = load i64, i64* @LDNS_RDF_TYPE_DNAME, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @ldns_rdf_size(i32* %97)
  %99 = sext i32 %98 to i64
  %100 = add i64 %96, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32* @ldns_rdf_new_frm_data(i64 %95, i32 %101, i8* %17)
  %103 = load i32**, i32*** %6, align 8
  store i32* %102, i32** %103, align 8
  %104 = load i32**, i32*** %6, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %108, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %111

109:                                              ; preds = %87
  %110 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %109, %107, %85, %74
  %112 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ldns_rdf_get_type(i32*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @ldns_rdf_size(i32*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @ldns_rdf_data(i32*) #2

declare dso_local i32* @ldns_rdf_new_frm_data(i64, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
