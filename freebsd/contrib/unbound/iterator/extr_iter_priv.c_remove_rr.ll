; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_remove_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_remove_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64, i64, i32, %struct.rr_parse*, i32, i32 }
%struct.rr_parse = type { i64, i32 }
%struct.sockaddr_storage = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.rrset_parse*, %struct.rr_parse*, %struct.rr_parse**, %struct.sockaddr_storage*, i32)* @remove_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_rr(i8* %0, i32* %1, %struct.rrset_parse* %2, %struct.rr_parse* %3, %struct.rr_parse** %4, %struct.sockaddr_storage* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rrset_parse*, align 8
  %11 = alloca %struct.rr_parse*, align 8
  %12 = alloca %struct.rr_parse**, align 8
  %13 = alloca %struct.sockaddr_storage*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.rrset_parse* %2, %struct.rrset_parse** %10, align 8
  store %struct.rr_parse* %3, %struct.rr_parse** %11, align 8
  store %struct.rr_parse** %4, %struct.rr_parse*** %12, align 8
  store %struct.sockaddr_storage* %5, %struct.sockaddr_storage** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i64, i64* @verbosity, align 8
  %18 = load i64, i64* @VERB_QUERY, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %7
  %21 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %22 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %15, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %36 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dname_pkt_copy(i32* %34, i32* %33, i32 %37)
  %39 = load i64, i64* @VERB_QUERY, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @log_name_addr(i64 %39, i8* %40, i32* %33, %struct.sockaddr_storage* %41, i32 %42)
  %44 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %44)
  br label %45

45:                                               ; preds = %29, %26, %20, %7
  %46 = load %struct.rr_parse*, %struct.rr_parse** %11, align 8
  %47 = icmp ne %struct.rr_parse* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.rr_parse**, %struct.rr_parse*** %12, align 8
  %50 = load %struct.rr_parse*, %struct.rr_parse** %49, align 8
  %51 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rr_parse*, %struct.rr_parse** %11, align 8
  %54 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %62

55:                                               ; preds = %45
  %56 = load %struct.rr_parse**, %struct.rr_parse*** %12, align 8
  %57 = load %struct.rr_parse*, %struct.rr_parse** %56, align 8
  %58 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %61 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %64 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %63, i32 0, i32 3
  %65 = load %struct.rr_parse*, %struct.rr_parse** %64, align 8
  %66 = load %struct.rr_parse**, %struct.rr_parse*** %12, align 8
  %67 = load %struct.rr_parse*, %struct.rr_parse** %66, align 8
  %68 = icmp eq %struct.rr_parse* %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.rr_parse*, %struct.rr_parse** %11, align 8
  %71 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %72 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %71, i32 0, i32 3
  store %struct.rr_parse* %70, %struct.rr_parse** %72, align 8
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %75 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.rr_parse**, %struct.rr_parse*** %12, align 8
  %79 = load %struct.rr_parse*, %struct.rr_parse** %78, align 8
  %80 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %83 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %89 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i32) #2

declare dso_local i32 @log_name_addr(i64, i8*, i32*, %struct.sockaddr_storage*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
