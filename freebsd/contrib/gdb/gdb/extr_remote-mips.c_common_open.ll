; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_common_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_common_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [569 x i8] c"To open a MIPS remote debugging connection, you need to specify what serial\0Adevice is attached to the target board (e.g., /dev/ttya).\0AIf you want to use TFTP to download to the board, specify the name of a\0Atemporary file to be used by GDB for downloads as the second argument.\0AThis filename must be in the form host:filename, where host is the name\0Aof the host running the TFTP server, and the file must be readable by the\0Aworld.  If the local name of the temporary file differs from the name as\0Aseen from the board via TFTP, specify that name as the third parameter.\0A\00", align 1
@mips_is_open = common dso_local global i32 0, align 4
@current_ops = common dso_local global %struct.target_ops* null, align 8
@mips_desc = common dso_local global i32* null, align 8
@baud_rate = common dso_local global i32 0, align 4
@udp_desc = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to open UDP port\00", align 1
@udp_in_use = common dso_local global i32 0, align 4
@tftp_name = common dso_local global i8* null, align 8
@tftp_localname = common dso_local global i8* null, align 8
@tftp_in_use = common dso_local global i32 0, align 4
@mips_monitor_prompt = common dso_local global i32* null, align 8
@mips_monitor = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Remote MIPS debugging using %s\0A\00", align 1
@stop_pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_ops*, i8*, i32, i32, i8*)* @common_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_open(%struct.target_ops* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.target_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  store %struct.target_ops* %0, %struct.target_ops** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = call i32 @error(i8* getelementptr inbounds ([569 x i8], [569 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i8*, i8** %7, align 8
  %22 = call i8** @buildargv(i8* %21)
  store i8** %22, i8*** %15, align 8
  %23 = icmp eq i8** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @nomem(i32 0)
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8**, i8*** %15, align 8
  %28 = call i32 @make_cleanup_freeargv(i8** %27)
  %29 = load i8**, i8*** %15, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @xstrdup(i8* %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8**, i8*** %15, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load i8**, i8*** %15, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %13, align 8
  %41 = load i8**, i8*** %15, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i8**, i8*** %15, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %14, align 8
  br label %49

49:                                               ; preds = %45, %37
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @target_preopen(i32 %51)
  %53 = load i32, i32* @mips_is_open, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.target_ops*, %struct.target_ops** @current_ops, align 8
  %57 = call i32 @unpush_target(%struct.target_ops* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @serial_open(i8* %59)
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** @mips_desc, align 8
  %62 = load i32*, i32** @mips_desc, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @perror_with_name(i8* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @baud_rate, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32*, i32** @mips_desc, align 8
  %72 = load i32, i32* @baud_rate, align 4
  %73 = call i64 @serial_setbaudrate(i32* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** @mips_desc, align 8
  %77 = call i32 @serial_close(i32* %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @perror_with_name(i8* %78)
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32*, i32** @mips_desc, align 8
  %83 = call i32 @serial_raw(i32* %82)
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %132

86:                                               ; preds = %81
  %87 = load i8*, i8** %13, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 35)
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i8*, i8** %13, align 8
  %92 = call i8* @serial_open(i8* %91)
  store i8* %92, i8** @udp_desc, align 8
  %93 = load i8*, i8** @udp_desc, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = call i32 @perror_with_name(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  store i32 1, i32* @udp_in_use, align 4
  br label %131

98:                                               ; preds = %86
  %99 = load i8*, i8** @tftp_name, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** @tftp_name, align 8
  %103 = call i32 @xfree(i8* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i8*, i8** @tftp_localname, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** @tftp_localname, align 8
  %109 = call i32 @xfree(i8* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** %14, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i8*, i8** %13, align 8
  %115 = call i8* @strchr(i8* %114, i8 signext 58)
  store i8* %115, i8** %14, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i8*, i8** %14, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %14, align 8
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %110
  %122 = load i8*, i8** %14, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i8*, i8** %13, align 8
  store i8* %125, i8** %14, align 8
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i8*, i8** %13, align 8
  %128 = call i8* @xstrdup(i8* %127)
  store i8* %128, i8** @tftp_name, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = call i8* @xstrdup(i8* %129)
  store i8* %130, i8** @tftp_localname, align 8
  store i32 1, i32* @tftp_in_use, align 4
  br label %131

131:                                              ; preds = %126, %97
  br label %132

132:                                              ; preds = %131, %81
  %133 = load %struct.target_ops*, %struct.target_ops** %6, align 8
  store %struct.target_ops* %133, %struct.target_ops** @current_ops, align 8
  store i32 1, i32* @mips_is_open, align 4
  %134 = load i32*, i32** @mips_monitor_prompt, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8*, i8** %10, align 8
  %138 = call i8* @xstrdup(i8* %137)
  %139 = bitcast i8* %138 to i32*
  store i32* %139, i32** @mips_monitor_prompt, align 8
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* @mips_monitor, align 4
  %142 = call i32 (...) @mips_initialize()
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** %12, align 8
  %147 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %struct.target_ops*, %struct.target_ops** %6, align 8
  %150 = call i32 @push_target(%struct.target_ops* %149)
  %151 = call i32 (...) @deprecated_mips_set_processor_regs_hack()
  %152 = call i32 (...) @flush_cached_frames()
  %153 = call i32 (...) @registers_changed()
  %154 = call i32 (...) @read_pc()
  store i32 %154, i32* @stop_pc, align 4
  %155 = call i32 (...) @get_selected_frame()
  %156 = call i32 @print_stack_frame(i32 %155, i32 -1, i32 1)
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 @xfree(i8* %157)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8** @buildargv(i8*) #1

declare dso_local i32 @nomem(i32) #1

declare dso_local i32 @make_cleanup_freeargv(i8**) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @unpush_target(%struct.target_ops*) #1

declare dso_local i8* @serial_open(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i64 @serial_setbaudrate(i32*, i32) #1

declare dso_local i32 @serial_close(i32*) #1

declare dso_local i32 @serial_raw(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @mips_initialize(...) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*) #1

declare dso_local i32 @push_target(%struct.target_ops*) #1

declare dso_local i32 @deprecated_mips_set_processor_regs_hack(...) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local i32 @get_selected_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
