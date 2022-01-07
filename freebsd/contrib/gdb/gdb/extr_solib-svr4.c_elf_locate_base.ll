; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_elf_locate_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c_elf_locate_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }

@exec_bfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@DT_NULL = common dso_local global i64 0, align 8
@DT_DEBUG = common dso_local global i64 0, align 8
@DT_MIPS_RLD_MAP = common dso_local global i64 0, align 8
@TARGET_PTR_BIT = common dso_local global i32 0, align 4
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @elf_locate_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @elf_locate_base() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.bfd_section*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = load i32, i32* @exec_bfd, align 4
  %19 = call %struct.bfd_section* @bfd_get_section_by_name(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.bfd_section* %19, %struct.bfd_section** %2, align 8
  %20 = load %struct.bfd_section*, %struct.bfd_section** %2, align 8
  %21 = icmp eq %struct.bfd_section* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %188

23:                                               ; preds = %0
  %24 = load i32, i32* @exec_bfd, align 4
  %25 = load %struct.bfd_section*, %struct.bfd_section** %2, align 8
  %26 = call i8* @bfd_section_vma(i32 %24, %struct.bfd_section* %25)
  store i8* %26, i8** %4, align 8
  %27 = load i32, i32* @exec_bfd, align 4
  %28 = load %struct.bfd_section*, %struct.bfd_section** %2, align 8
  %29 = call i32 @bfd_section_size(i32 %27, %struct.bfd_section* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i8* @alloca(i32 %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @target_read_memory(i8* %32, i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i8* null, i8** %1, align 8
  br label %188

38:                                               ; preds = %23
  %39 = load i32, i32* @exec_bfd, align 4
  %40 = call i32 @bfd_get_arch_size(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* null, i8** %1, align 8
  br label %188

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %117

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8* %51, i8** %6, align 8
  br label %52

52:                                               ; preds = %113, %47
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = bitcast i8* %57 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %8, align 8
  %59 = load i32, i32* @exec_bfd, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = call i8* @bfd_h_get_32(i32 %59, i32* %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @DT_NULL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %116

70:                                               ; preds = %56
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @DT_DEBUG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32, i32* @exec_bfd, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = call i8* @bfd_h_get_32(i32 %75, i32* %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  store i8* %82, i8** %1, align 8
  br label %188

83:                                               ; preds = %70
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @DT_MIPS_RLD_MAP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = load i32, i32* @TARGET_PTR_BIT, align 4
  %89 = load i32, i32* @HOST_CHAR_BIT, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i8* @alloca(i32 %91)
  store i8* %92, i8** %11, align 8
  %93 = load i32, i32* @exec_bfd, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = call i8* @bfd_h_get_32(i32 %93, i32* %98)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @target_read_memory(i8* %100, i8* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %87
  store i8* null, i8** %1, align 8
  br label %188

106:                                              ; preds = %87
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i8* @extract_unsigned_integer(i8* %107, i32 %108)
  store i8* %109, i8** %1, align 8
  br label %188

110:                                              ; preds = %83
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 16
  store i8* %115, i8** %5, align 8
  br label %52

116:                                              ; preds = %69, %52
  br label %187

117:                                              ; preds = %44
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8* %121, i8** %6, align 8
  br label %122

122:                                              ; preds = %183, %117
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %186

126:                                              ; preds = %122
  %127 = load i8*, i8** %5, align 8
  %128 = bitcast i8* %127 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %13, align 8
  %129 = load i32, i32* @exec_bfd, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = call i8* @bfd_h_get_64(i32 %129, i32* %133)
  %135 = ptrtoint i8* %134 to i64
  store i64 %135, i64* %14, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* @DT_NULL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  br label %186

140:                                              ; preds = %126
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* @DT_DEBUG, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, i32* @exec_bfd, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i32*
  %151 = call i8* @bfd_h_get_64(i32 %145, i32* %150)
  store i8* %151, i8** %15, align 8
  %152 = load i8*, i8** %15, align 8
  store i8* %152, i8** %1, align 8
  br label %188

153:                                              ; preds = %140
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* @DT_MIPS_RLD_MAP, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %153
  %158 = load i32, i32* @TARGET_PTR_BIT, align 4
  %159 = load i32, i32* @HOST_CHAR_BIT, align 4
  %160 = sdiv i32 %158, %159
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = call i8* @alloca(i32 %161)
  store i8* %162, i8** %16, align 8
  %163 = load i32, i32* @exec_bfd, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i32*
  %169 = call i8* @bfd_h_get_64(i32 %163, i32* %168)
  store i8* %169, i8** %15, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = load i8*, i8** %16, align 8
  %172 = load i32, i32* %17, align 4
  %173 = call i64 @target_read_memory(i8* %170, i8* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %157
  store i8* null, i8** %1, align 8
  br label %188

176:                                              ; preds = %157
  %177 = load i8*, i8** %16, align 8
  %178 = load i32, i32* %17, align 4
  %179 = call i8* @extract_unsigned_integer(i8* %177, i32 %178)
  store i8* %179, i8** %1, align 8
  br label %188

180:                                              ; preds = %153
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 16
  store i8* %185, i8** %5, align 8
  br label %122

186:                                              ; preds = %139, %122
  br label %187

187:                                              ; preds = %186, %116
  store i8* null, i8** %1, align 8
  br label %188

188:                                              ; preds = %187, %176, %175, %144, %106, %105, %74, %43, %37, %22
  %189 = load i8*, i8** %1, align 8
  ret i8* %189
}

declare dso_local %struct.bfd_section* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i8* @bfd_section_vma(i32, %struct.bfd_section*) #1

declare dso_local i32 @bfd_section_size(i32, %struct.bfd_section*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i64 @target_read_memory(i8*, i8*, i32) #1

declare dso_local i32 @bfd_get_arch_size(i32) #1

declare dso_local i8* @bfd_h_get_32(i32, i32*) #1

declare dso_local i8* @extract_unsigned_integer(i8*, i32) #1

declare dso_local i8* @bfd_h_get_64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
