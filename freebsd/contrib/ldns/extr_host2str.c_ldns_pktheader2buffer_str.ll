; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_pktheader2buffer_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_pktheader2buffer_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ldns_opcodes = common dso_local global i32 0, align 4
@ldns_rcodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c";; ->>HEADER<<- \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"opcode: %s, \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"opcode: ?? (%u), \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rcode: %s, \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"rcode: ?? (%u), \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"id: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c";; flags: \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"qr \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"aa \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tc \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rd \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"cd \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ra \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ad \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"QUERY: %u, \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ANSWER: %u, \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"AUTHORITY: %u, \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ADDITIONAL: %u \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_pktheader2buffer_str(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @ldns_opcodes, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @ldns_pkt_get_opcode(i32* %8)
  %10 = trunc i64 %9 to i32
  %11 = call %struct.TYPE_3__* @ldns_lookup_by_id(i32 %7, i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  %12 = load i32, i32* @ldns_rcodes, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @ldns_pkt_get_rcode(i32* %13)
  %15 = trunc i64 %14 to i32
  %16 = call %struct.TYPE_3__* @ldns_lookup_by_id(i32 %12, i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %32

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @ldns_pkt_get_opcode(i32* %29)
  %31 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  br label %46

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @ldns_pkt_get_rcode(i32* %43)
  %45 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @ldns_pkt_id(i32* %48)
  %50 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @ldns_pkt_qr(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %46
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 @ldns_pkt_aa(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @ldns_pkt_tc(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32*, i32** %4, align 8
  %75 = call i64 @ldns_pkt_rd(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @ldns_pkt_cd(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @ldns_pkt_ra(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32*, i32** %4, align 8
  %96 = call i64 @ldns_pkt_ad(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i64 @ldns_pkt_qdcount(i32* %105)
  %107 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i64 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i64 @ldns_pkt_ancount(i32* %109)
  %111 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = call i64 @ldns_pkt_nscount(i32* %113)
  %115 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i64 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = call i64 @ldns_pkt_arcount(i32* %117)
  %119 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @ldns_buffer_status(i32* %120)
  ret i32 %121
}

declare dso_local %struct.TYPE_3__* @ldns_lookup_by_id(i32, i32) #1

declare dso_local i64 @ldns_pkt_get_opcode(i32*) #1

declare dso_local i64 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i64 @ldns_pkt_id(i32*) #1

declare dso_local i64 @ldns_pkt_qr(i32*) #1

declare dso_local i64 @ldns_pkt_aa(i32*) #1

declare dso_local i64 @ldns_pkt_tc(i32*) #1

declare dso_local i64 @ldns_pkt_rd(i32*) #1

declare dso_local i64 @ldns_pkt_cd(i32*) #1

declare dso_local i64 @ldns_pkt_ra(i32*) #1

declare dso_local i64 @ldns_pkt_ad(i32*) #1

declare dso_local i64 @ldns_pkt_qdcount(i32*) #1

declare dso_local i64 @ldns_pkt_ancount(i32*) #1

declare dso_local i64 @ldns_pkt_nscount(i32*) #1

declare dso_local i64 @ldns_pkt_arcount(i32*) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
