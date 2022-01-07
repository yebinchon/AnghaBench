; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_remove_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_remove_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, i32, i32, %struct.rrset_parse*, %struct.rrset_parse* }
%struct.rrset_parse = type { i64, i32, %struct.rrset_parse*, i32, i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.msg_parse*, %struct.rrset_parse*, %struct.rrset_parse**)* @remove_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_rrset(i8* %0, i32* %1, %struct.msg_parse* %2, %struct.rrset_parse* %3, %struct.rrset_parse** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.msg_parse*, align 8
  %9 = alloca %struct.rrset_parse*, align 8
  %10 = alloca %struct.rrset_parse**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.msg_parse* %2, %struct.msg_parse** %8, align 8
  store %struct.rrset_parse* %3, %struct.rrset_parse** %9, align 8
  store %struct.rrset_parse** %4, %struct.rrset_parse*** %10, align 8
  %13 = load i64, i64* @verbosity, align 8
  %14 = load i64, i64* @VERB_QUERY, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %5
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %16
  %20 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %21 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %22 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %33 = load %struct.rrset_parse*, %struct.rrset_parse** %32, align 8
  %34 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dname_pkt_copy(i32* %31, i32* %30, i32 %35)
  %37 = load i64, i64* @VERB_QUERY, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %40 = load %struct.rrset_parse*, %struct.rrset_parse** %39, align 8
  %41 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %44 = load %struct.rrset_parse*, %struct.rrset_parse** %43, align 8
  %45 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  %48 = call i32 @log_nametypeclass(i64 %37, i8* %38, i32* %30, i32 %42, i32 %47)
  %49 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %49)
  br label %50

50:                                               ; preds = %26, %19, %16, %5
  %51 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %52 = icmp ne %struct.rrset_parse* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %55 = load %struct.rrset_parse*, %struct.rrset_parse** %54, align 8
  %56 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %55, i32 0, i32 2
  %57 = load %struct.rrset_parse*, %struct.rrset_parse** %56, align 8
  %58 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %59 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %58, i32 0, i32 2
  store %struct.rrset_parse* %57, %struct.rrset_parse** %59, align 8
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %62 = load %struct.rrset_parse*, %struct.rrset_parse** %61, align 8
  %63 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %62, i32 0, i32 2
  %64 = load %struct.rrset_parse*, %struct.rrset_parse** %63, align 8
  %65 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %66 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %65, i32 0, i32 5
  store %struct.rrset_parse* %64, %struct.rrset_parse** %66, align 8
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %69 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %68, i32 0, i32 4
  %70 = load %struct.rrset_parse*, %struct.rrset_parse** %69, align 8
  %71 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %72 = load %struct.rrset_parse*, %struct.rrset_parse** %71, align 8
  %73 = icmp eq %struct.rrset_parse* %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  %76 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %77 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %76, i32 0, i32 4
  store %struct.rrset_parse* %75, %struct.rrset_parse** %77, align 8
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %80 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %84 = load %struct.rrset_parse*, %struct.rrset_parse** %83, align 8
  %85 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %102 [
    i32 129, label %87
    i32 128, label %92
    i32 130, label %97
  ]

87:                                               ; preds = %78
  %88 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %89 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  br label %104

92:                                               ; preds = %78
  %93 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %94 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  br label %104

97:                                               ; preds = %78
  %98 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %99 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 8
  br label %104

102:                                              ; preds = %78
  %103 = call i32 @log_assert(i32 0)
  br label %104

104:                                              ; preds = %102, %97, %92, %87
  %105 = load %struct.msg_parse*, %struct.msg_parse** %8, align 8
  %106 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %107 = load %struct.rrset_parse*, %struct.rrset_parse** %106, align 8
  %108 = call i32 @msgparse_bucket_remove(%struct.msg_parse* %105, %struct.rrset_parse* %107)
  %109 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  %110 = load %struct.rrset_parse*, %struct.rrset_parse** %109, align 8
  %111 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %110, i32 0, i32 2
  %112 = load %struct.rrset_parse*, %struct.rrset_parse** %111, align 8
  %113 = load %struct.rrset_parse**, %struct.rrset_parse*** %10, align 8
  store %struct.rrset_parse* %112, %struct.rrset_parse** %113, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i32) #2

declare dso_local i32 @log_nametypeclass(i64, i8*, i32*, i32, i32) #2

declare dso_local i32 @ntohs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @log_assert(i32) #2

declare dso_local i32 @msgparse_bucket_remove(%struct.msg_parse*, %struct.rrset_parse*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
