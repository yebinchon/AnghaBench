; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_xcoff_relocate_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_xcoff_relocate_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { i64, i32, i32, i32, i32, i32 }
%struct.target_ops = type { %struct.section_table* }
%struct.section_table = type { i32, i32, i32, i8* }
%struct.bfd_section = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cleanup = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4
@core_bfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".ldinfo\00", align 1
@gdb_stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't get ldinfo from core file: %s\0A\00", align 1
@vmap = common dso_local global %struct.vmap* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xcoff_relocate_core(%struct.target_ops* %0) #0 {
  %2 = alloca %struct.target_ops*, align 8
  %3 = alloca %struct.bfd_section*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.vmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cleanup*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.section_table*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %2, align 8
  store i32 0, i32* %4, align 4
  %15 = call i32 (...) @ARCH64()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @LDI_FILENAME(%struct.TYPE_10__* null, i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i8* @xmalloc(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* @free_current_contents, align 4
  %23 = call %struct.cleanup* @make_cleanup(i32 %22, i8** %10)
  store %struct.cleanup* %23, %struct.cleanup** %11, align 8
  %24 = load i32, i32* @core_bfd, align 4
  %25 = call i8* @bfd_get_section_by_name(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.bfd_section*
  store %struct.bfd_section* %26, %struct.bfd_section** %3, align 8
  %27 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %28 = icmp eq %struct.bfd_section* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %71, %46, %29
  %31 = load i32, i32* @gdb_stderr, align 4
  %32 = call i32 (...) @bfd_get_error()
  %33 = call i32 @bfd_errmsg(i32 %32)
  %34 = call i32 @fprintf_filtered(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %36 = call i32 @do_cleanups(%struct.cleanup* %35)
  br label %210

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %200, %37
  store i32 0, i32* %13, align 4
  %39 = load i32, i32* @core_bfd, align 4
  %40 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @bfd_get_section_contents(i32 %39, %struct.bfd_section* %40, i8* %41, i32 %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %30

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %85, %47
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %9, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @xrealloc(i8* %56, i32 %57)
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* @core_bfd, align 4
  %61 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i64 @bfd_get_section_contents(i32 %60, %struct.bfd_section* %61, i8* %65, i32 %68, i32 1)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %30

72:                                               ; preds = %59
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %49, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = bitcast i8* %89 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 4
  br label %101

97:                                               ; preds = %88
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 -1, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  %106 = icmp ne %struct.vmap* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  store %struct.vmap* %108, %struct.vmap** %6, align 8
  br label %112

109:                                              ; preds = %104, %101
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = call %struct.vmap* @add_vmap(%struct.TYPE_10__* %110)
  store %struct.vmap* %111, %struct.vmap** %6, align 8
  br label %112

112:                                              ; preds = %109, %107
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @LDI_NEXT(%struct.TYPE_10__* %113, i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %4, align 4
  %120 = load %struct.vmap*, %struct.vmap** %6, align 8
  %121 = icmp eq %struct.vmap* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %200

123:                                              ; preds = %112
  %124 = load %struct.vmap*, %struct.vmap** %6, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @vmap_secs(%struct.vmap* %124, %struct.TYPE_10__* %125, i32 %126)
  %128 = load %struct.vmap*, %struct.vmap** %6, align 8
  %129 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  %130 = icmp ne %struct.vmap* %128, %129
  br i1 %130, label %131, label %182

131:                                              ; preds = %123
  %132 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %133 = call i32 @target_resize_to_sections(%struct.target_ops* %132, i32 2)
  %134 = load %struct.target_ops*, %struct.target_ops** %2, align 8
  %135 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %134, i32 0, i32 0
  %136 = load %struct.section_table*, %struct.section_table** %135, align 8
  %137 = getelementptr inbounds %struct.section_table, %struct.section_table* %136, i64 -2
  store %struct.section_table* %137, %struct.section_table** %14, align 8
  %138 = load %struct.vmap*, %struct.vmap** %6, align 8
  %139 = getelementptr inbounds %struct.vmap, %struct.vmap* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.section_table*, %struct.section_table** %14, align 8
  %142 = getelementptr inbounds %struct.section_table, %struct.section_table* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.section_table*, %struct.section_table** %14, align 8
  %144 = getelementptr inbounds %struct.section_table, %struct.section_table* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @bfd_get_section_by_name(i32 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.section_table*, %struct.section_table** %14, align 8
  %148 = getelementptr inbounds %struct.section_table, %struct.section_table* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load %struct.vmap*, %struct.vmap** %6, align 8
  %150 = getelementptr inbounds %struct.vmap, %struct.vmap* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.section_table*, %struct.section_table** %14, align 8
  %153 = getelementptr inbounds %struct.section_table, %struct.section_table* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.vmap*, %struct.vmap** %6, align 8
  %155 = getelementptr inbounds %struct.vmap, %struct.vmap* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.section_table*, %struct.section_table** %14, align 8
  %158 = getelementptr inbounds %struct.section_table, %struct.section_table* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.section_table*, %struct.section_table** %14, align 8
  %160 = getelementptr inbounds %struct.section_table, %struct.section_table* %159, i32 1
  store %struct.section_table* %160, %struct.section_table** %14, align 8
  %161 = load %struct.vmap*, %struct.vmap** %6, align 8
  %162 = getelementptr inbounds %struct.vmap, %struct.vmap* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.section_table*, %struct.section_table** %14, align 8
  %165 = getelementptr inbounds %struct.section_table, %struct.section_table* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.section_table*, %struct.section_table** %14, align 8
  %167 = getelementptr inbounds %struct.section_table, %struct.section_table* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @bfd_get_section_by_name(i32 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %170 = load %struct.section_table*, %struct.section_table** %14, align 8
  %171 = getelementptr inbounds %struct.section_table, %struct.section_table* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  %172 = load %struct.vmap*, %struct.vmap** %6, align 8
  %173 = getelementptr inbounds %struct.vmap, %struct.vmap* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.section_table*, %struct.section_table** %14, align 8
  %176 = getelementptr inbounds %struct.section_table, %struct.section_table* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.vmap*, %struct.vmap** %6, align 8
  %178 = getelementptr inbounds %struct.vmap, %struct.vmap* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.section_table*, %struct.section_table** %14, align 8
  %181 = getelementptr inbounds %struct.section_table, %struct.section_table* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %131, %123
  %183 = load %struct.vmap*, %struct.vmap** %6, align 8
  %184 = call i32 @vmap_symtab(%struct.vmap* %183)
  br i1 true, label %185, label %199

185:                                              ; preds = %182
  %186 = load %struct.vmap*, %struct.vmap** %6, align 8
  %187 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  %188 = icmp ne %struct.vmap* %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load %struct.vmap*, %struct.vmap** %6, align 8
  %191 = getelementptr inbounds %struct.vmap, %struct.vmap* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.vmap*, %struct.vmap** %6, align 8
  %196 = getelementptr inbounds %struct.vmap, %struct.vmap* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @target_new_objfile_hook(i64 %197)
  br label %199

199:                                              ; preds = %194, %189, %185, %182
  br label %200

200:                                              ; preds = %199, %122
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i64 @LDI_NEXT(%struct.TYPE_10__* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %38, label %205

205:                                              ; preds = %200
  %206 = call i32 (...) @vmap_exec()
  %207 = call i32 (...) @breakpoint_re_set()
  %208 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %209 = call i32 @do_cleanups(%struct.cleanup* %208)
  br label %210

210:                                              ; preds = %205, %30
  ret void
}

declare dso_local i32 @ARCH64(...) #1

declare dso_local i64 @LDI_FILENAME(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8**) #1

declare dso_local i8* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @bfd_get_section_contents(i32, %struct.bfd_section*, i8*, i32, i32) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local %struct.vmap* @add_vmap(%struct.TYPE_10__*) #1

declare dso_local i64 @LDI_NEXT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vmap_secs(%struct.vmap*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @target_resize_to_sections(%struct.target_ops*, i32) #1

declare dso_local i32 @vmap_symtab(%struct.vmap*) #1

declare dso_local i32 @target_new_objfile_hook(i64) #1

declare dso_local i32 @vmap_exec(...) #1

declare dso_local i32 @breakpoint_re_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
