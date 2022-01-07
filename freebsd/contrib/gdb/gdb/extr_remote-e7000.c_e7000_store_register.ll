; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_store_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TARGET_ARCHITECTURE = common dso_local global %struct.TYPE_2__* null, align 8
@bfd_arch_h8300 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c".ER%d %s\0D\00", align 1
@PC_REGNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c".PC %s\0D\00", align 1
@bfd_arch_sh = common dso_local global i64 0, align 8
@SR_REGNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c".SR %s\0D\00", align 1
@PR_REGNUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c".PR %s\0D\00", align 1
@GBR_REGNUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c".GBR %s\0D\00", align 1
@VBR_REGNUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c".VBR %s\0D\00", align 1
@MACH_REGNUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c".MACH %s\0D\00", align 1
@MACL_REGNUM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c".MACL %s\0D\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c".R%d %s\0D\00", align 1
@CCR_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @e7000_store_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7000_store_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [200 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @e7000_store_registers()
  br label %149

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @bfd_arch_h8300, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 %15, 7
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @read_register(i32 %20)
  %22 = call i8* @phex_nz(i32 %21, i32 0)
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %22)
  %24 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %25 = call i32 @puts_e7000debug(i8* %24)
  br label %39

26:                                               ; preds = %14
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @PC_REGNUM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @read_register(i32 %32)
  %34 = call i8* @phex_nz(i32 %33, i32 0)
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %37 = call i32 @puts_e7000debug(i8* %36)
  br label %38

38:                                               ; preds = %30, %26
  br label %39

39:                                               ; preds = %38, %17
  br label %147

40:                                               ; preds = %8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TARGET_ARCHITECTURE, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @bfd_arch_sh, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %146

46:                                               ; preds = %40
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @PC_REGNUM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @read_register(i32 %52)
  %54 = call i8* @phex_nz(i32 %53, i32 0)
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %57 = call i32 @puts_e7000debug(i8* %56)
  br label %145

58:                                               ; preds = %46
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @SR_REGNUM, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @read_register(i32 %64)
  %66 = call i8* @phex_nz(i32 %65, i32 0)
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %69 = call i32 @puts_e7000debug(i8* %68)
  br label %144

70:                                               ; preds = %58
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @PR_REGNUM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @read_register(i32 %76)
  %78 = call i8* @phex_nz(i32 %77, i32 0)
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %81 = call i32 @puts_e7000debug(i8* %80)
  br label %143

82:                                               ; preds = %70
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @GBR_REGNUM, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @read_register(i32 %88)
  %90 = call i8* @phex_nz(i32 %89, i32 0)
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %93 = call i32 @puts_e7000debug(i8* %92)
  br label %142

94:                                               ; preds = %82
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @VBR_REGNUM, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @read_register(i32 %100)
  %102 = call i8* @phex_nz(i32 %101, i32 0)
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  %104 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %105 = call i32 @puts_e7000debug(i8* %104)
  br label %141

106:                                              ; preds = %94
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @MACH_REGNUM, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @read_register(i32 %112)
  %114 = call i8* @phex_nz(i32 %113, i32 0)
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %114)
  %116 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %117 = call i32 @puts_e7000debug(i8* %116)
  br label %140

118:                                              ; preds = %106
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @MACL_REGNUM, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @read_register(i32 %124)
  %126 = call i8* @phex_nz(i32 %125, i32 0)
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  %128 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %129 = call i32 @puts_e7000debug(i8* %128)
  br label %139

130:                                              ; preds = %118
  %131 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @read_register(i32 %133)
  %135 = call i8* @phex_nz(i32 %134, i32 0)
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %132, i8* %135)
  %137 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %138 = call i32 @puts_e7000debug(i8* %137)
  br label %139

139:                                              ; preds = %130, %122
  br label %140

140:                                              ; preds = %139, %110
  br label %141

141:                                              ; preds = %140, %98
  br label %142

142:                                              ; preds = %141, %86
  br label %143

143:                                              ; preds = %142, %74
  br label %144

144:                                              ; preds = %143, %62
  br label %145

145:                                              ; preds = %144, %50
  br label %146

146:                                              ; preds = %145, %40
  br label %147

147:                                              ; preds = %146, %39
  %148 = call i32 (...) @expect_prompt()
  br label %149

149:                                              ; preds = %147, %6
  ret void
}

declare dso_local i32 @e7000_store_registers(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @phex_nz(i32, i32) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @puts_e7000debug(i8*) #1

declare dso_local i32 @expect_prompt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
