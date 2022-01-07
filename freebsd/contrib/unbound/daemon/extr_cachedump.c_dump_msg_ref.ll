; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_msg_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_msg_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"BADREF\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s %s %s %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ub_packed_rrset_key*)* @dump_msg_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_msg_ref(i32* %0, %struct.ub_packed_rrset_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %10 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %14 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @sldns_wire2str_dname(i32 %12, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %19 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  %23 = call i8* @sldns_wire2str_type(i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %25 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ntohs(i32 %27)
  %29 = call i8* @sldns_wire2str_class(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35, %32, %2
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %35
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50, i8* %51, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %47
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @free(i8* %64)
  store i32 0, i32* %3, align 4
  br label %73

66:                                               ; preds = %47
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @free(i8* %71)
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %59, %38
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i8* @sldns_wire2str_dname(i32, i32) #1

declare dso_local i8* @sldns_wire2str_type(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @sldns_wire2str_class(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
