; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunk_rrlist_get_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunk_rrlist_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_chunk = type { i64, i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_chunk*, i32, i64, i32**, i32*, i32*, i32*, i32*, i32**, i64*)* @chunk_rrlist_get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_rrlist_get_current(%struct.auth_chunk* %0, i32 %1, i64 %2, i32** %3, i32* %4, i32* %5, i32* %6, i32* %7, i32** %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.auth_chunk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.auth_chunk* %0, %struct.auth_chunk** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i32** %3, i32*** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32** %8, i32*** %20, align 8
  store i64* %9, i64** %21, align 8
  %24 = load %struct.auth_chunk*, %struct.auth_chunk** %12, align 8
  %25 = icmp ne %struct.auth_chunk* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %119

27:                                               ; preds = %10
  %28 = load %struct.auth_chunk*, %struct.auth_chunk** %12, align 8
  %29 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %119

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.auth_chunk*, %struct.auth_chunk** %12, align 8
  %37 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @LDNS_ANCOUNT(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = icmp sge i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %119

43:                                               ; preds = %34
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.auth_chunk*, %struct.auth_chunk** %12, align 8
  %46 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %119

50:                                               ; preds = %43
  %51 = load %struct.auth_chunk*, %struct.auth_chunk** %12, align 8
  %52 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.auth_chunk*, %struct.auth_chunk** %12, align 8
  %55 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @sldns_buffer_init_frm_data(i32* %22, i32 %53, i64 %56)
  %58 = load i64, i64* %14, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %50
  %61 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %62 = call i32 @sldns_buffer_set_position(i32* %22, i64 %61)
  store i64 0, i64* %23, align 8
  br label %63

63:                                               ; preds = %80, %60
  %64 = load i64, i64* %23, align 8
  %65 = load %struct.auth_chunk*, %struct.auth_chunk** %12, align 8
  %66 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @LDNS_QDCOUNT(i32 %67)
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = call i64 @pkt_dname_len(i32* %22)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %119

74:                                               ; preds = %70
  %75 = call i32 @sldns_buffer_remaining(i32* %22)
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %119

78:                                               ; preds = %74
  %79 = call i32 @sldns_buffer_skip(i32* %22, i32 4)
  br label %80

80:                                               ; preds = %78
  %81 = load i64, i64* %23, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %23, align 8
  br label %63

83:                                               ; preds = %63
  br label %87

84:                                               ; preds = %50
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @sldns_buffer_set_position(i32* %22, i64 %85)
  br label %87

87:                                               ; preds = %84, %83
  %88 = call i32* @sldns_buffer_current(i32* %22)
  %89 = load i32**, i32*** %15, align 8
  store i32* %88, i32** %89, align 8
  %90 = call i64 @pkt_dname_len(i32* %22)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %119

93:                                               ; preds = %87
  %94 = call i32 @sldns_buffer_remaining(i32* %22)
  %95 = icmp slt i32 %94, 10
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %11, align 4
  br label %119

97:                                               ; preds = %93
  %98 = call i32 @sldns_buffer_read_u16(i32* %22)
  %99 = load i32*, i32** %16, align 8
  store i32 %98, i32* %99, align 4
  %100 = call i32 @sldns_buffer_read_u16(i32* %22)
  %101 = load i32*, i32** %17, align 8
  store i32 %100, i32* %101, align 4
  %102 = call i32 @sldns_buffer_read_u32(i32* %22)
  %103 = load i32*, i32** %18, align 8
  store i32 %102, i32* %103, align 4
  %104 = call i32 @sldns_buffer_read_u16(i32* %22)
  %105 = load i32*, i32** %19, align 8
  store i32 %104, i32* %105, align 4
  %106 = call i32 @sldns_buffer_remaining(i32* %22)
  %107 = load i32*, i32** %19, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %119

111:                                              ; preds = %97
  %112 = call i32* @sldns_buffer_current(i32* %22)
  %113 = load i32**, i32*** %20, align 8
  store i32* %112, i32** %113, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sldns_buffer_skip(i32* %22, i32 %115)
  %117 = call i64 @sldns_buffer_position(i32* %22)
  %118 = load i64*, i64** %21, align 8
  store i64 %117, i64* %118, align 8
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %111, %110, %96, %92, %77, %73, %49, %42, %33, %26
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

declare dso_local i32 @sldns_buffer_init_frm_data(i32*, i32, i64) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i64 @LDNS_QDCOUNT(i32) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32* @sldns_buffer_current(i32*) #1

declare dso_local i32 @sldns_buffer_read_u16(i32*) #1

declare dso_local i32 @sldns_buffer_read_u32(i32*) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
