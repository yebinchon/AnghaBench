; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_attach_edns_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_attach_edns_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_data = type { i64, i64, %struct.edns_option*, i32, i32, i32 }
%struct.edns_option = type { i64, i64, i32, %struct.edns_option* }

@LDNS_RR_TYPE_OPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attach_edns_record(i32* %0, %struct.edns_data* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.edns_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.edns_option*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.edns_data* %1, %struct.edns_data** %4, align 8
  %8 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %9 = icmp ne %struct.edns_data* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %12 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %110

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @sldns_buffer_read_u16_at(i32* %18, i32 10)
  %20 = add i64 %19, 1
  %21 = call i32 @sldns_buffer_write_u16_at(i32* %17, i64 10, i64 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @sldns_buffer_limit(i32* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @sldns_buffer_clear(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @sldns_buffer_set_position(i32* %26, i64 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @sldns_buffer_write_u8(i32* %29, i32 0)
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* @LDNS_RR_TYPE_OPT, align 8
  %33 = call i32 @sldns_buffer_write_u16(i32* %31, i64 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %36 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @sldns_buffer_write_u16(i32* %34, i64 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %41 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sldns_buffer_write_u8(i32* %39, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %46 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sldns_buffer_write_u8(i32* %44, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %51 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @sldns_buffer_write_u16(i32* %49, i64 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i64 @sldns_buffer_position(i32* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @sldns_buffer_write_u16(i32* %56, i64 0)
  %58 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %59 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %58, i32 0, i32 2
  %60 = load %struct.edns_option*, %struct.edns_option** %59, align 8
  store %struct.edns_option* %60, %struct.edns_option** %7, align 8
  br label %61

61:                                               ; preds = %89, %16
  %62 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %63 = icmp ne %struct.edns_option* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %61
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %67 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @sldns_buffer_write_u16(i32* %65, i64 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %72 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @sldns_buffer_write_u16(i32* %70, i64 %73)
  %75 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %76 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %64
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %82 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %85 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @sldns_buffer_write(i32* %80, i32 %83, i64 %86)
  br label %88

88:                                               ; preds = %79, %64
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %91 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %90, i32 0, i32 3
  %92 = load %struct.edns_option*, %struct.edns_option** %91, align 8
  store %struct.edns_option* %92, %struct.edns_option** %7, align 8
  br label %61

93:                                               ; preds = %61
  %94 = load %struct.edns_data*, %struct.edns_data** %4, align 8
  %95 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %94, i32 0, i32 2
  %96 = load %struct.edns_option*, %struct.edns_option** %95, align 8
  %97 = icmp ne %struct.edns_option* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = call i64 @sldns_buffer_position(i32* %101)
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 %102, %103
  %105 = sub i64 %104, 2
  %106 = call i32 @sldns_buffer_write_u16_at(i32* %99, i64 %100, i64 %105)
  br label %107

107:                                              ; preds = %98, %93
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @sldns_buffer_flip(i32* %108)
  br label %110

110:                                              ; preds = %107, %15
  ret void
}

declare dso_local i32 @sldns_buffer_write_u16_at(i32*, i64, i64) #1

declare dso_local i64 @sldns_buffer_read_u16_at(i32*, i32) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i32) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32, i64) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
