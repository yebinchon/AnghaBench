; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_packet_edns_malformed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_packet_edns_malformed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sldns_buffer = type { i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sldns_buffer*, i32)* @packet_edns_malformed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_edns_malformed(%struct.sldns_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sldns_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sldns_buffer* %0, %struct.sldns_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %8 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %7)
  %9 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %91

12:                                               ; preds = %2
  %13 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %14 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %13)
  %15 = call i64 @LDNS_RCODE_WIRE(i32 %14)
  %16 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %91

19:                                               ; preds = %12
  %20 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %21 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %20)
  %22 = call i32 @LDNS_QDCOUNT(i32 %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %26 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %25)
  %27 = call i64 @LDNS_ANCOUNT(i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %91

30:                                               ; preds = %24
  %31 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %32 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %33 = call i64* @sldns_buffer_at(%struct.sldns_buffer* %31, i64 %32)
  %34 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %35 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %34)
  %36 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i64 @dname_valid(i64* %33, i64 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %91

42:                                               ; preds = %30
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %91

49:                                               ; preds = %45, %42
  %50 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %51 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %50)
  %52 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  %55 = add i64 %54, 4
  %56 = add i64 %55, 3
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %91

59:                                               ; preds = %49
  %60 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %61 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %61, %62
  %64 = add i64 %63, 4
  %65 = call i64* @sldns_buffer_at(%struct.sldns_buffer* %60, i64 %64)
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %59
  %70 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %71 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %71, %72
  %74 = add i64 %73, 4
  %75 = call i64* @sldns_buffer_at(%struct.sldns_buffer* %70, i64 %74)
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %69
  %80 = load %struct.sldns_buffer*, %struct.sldns_buffer** %4, align 8
  %81 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %81, %82
  %84 = add i64 %83, 4
  %85 = call i64* @sldns_buffer_at(%struct.sldns_buffer* %80, i64 %84)
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %91

90:                                               ; preds = %79, %69, %59
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %89, %58, %48, %41, %29, %18, %11
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @sldns_buffer_limit(%struct.sldns_buffer*) #1

declare dso_local i64 @LDNS_RCODE_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i32 @LDNS_QDCOUNT(i32) #1

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

declare dso_local i64 @dname_valid(i64*, i64) #1

declare dso_local i64* @sldns_buffer_at(%struct.sldns_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
