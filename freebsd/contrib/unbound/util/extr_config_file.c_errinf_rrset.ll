; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_errinf_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"for <%s %s %s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @errinf_rrset(%struct.module_qstate* %0, %struct.ub_packed_rrset_key* %1) #0 {
  %3 = alloca %struct.module_qstate*, align 8
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %3, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %4, align 8
  %11 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %26 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24, %2
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %35 = icmp ne %struct.ub_packed_rrset_key* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %24
  store i32 1, i32* %10, align 4
  br label %64

37:                                               ; preds = %33
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohs(i32 %41)
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %44 = call i32 @sldns_wire2str_type_buf(i32 %42, i8* %43, i32 16)
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %51 = call i32 @sldns_wire2str_class_buf(i32 %49, i8* %50, i32 16)
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dname_str(i32 %55, i8* %15)
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %60 = call i32 @snprintf(i8* %57, i32 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %58, i8* %59)
  %61 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %63 = call i32 @errinf(%struct.module_qstate* %61, i8* %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %37, %36
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %68 [
    i32 0, label %67
    i32 1, label %67
  ]

67:                                               ; preds = %64, %64
  ret void

68:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sldns_wire2str_type_buf(i32, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @sldns_wire2str_class_buf(i32, i8*, i32) #2

declare dso_local i32 @dname_str(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
