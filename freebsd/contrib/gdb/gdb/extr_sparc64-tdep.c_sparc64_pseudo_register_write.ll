; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_pseudo_register_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_pseudo_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }

@SPARC64_NUM_REGS = common dso_local global i32 0, align 4
@SPARC64_D0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D30_REGNUM = common dso_local global i32 0, align 4
@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D32_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D62_REGNUM = common dso_local global i32 0, align 4
@SPARC64_F32_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q28_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q32_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q60_REGNUM = common dso_local global i32 0, align 4
@SPARC64_STATE_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.regcache*, i32, i8*)* @sparc64_pseudo_register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64_pseudo_register_write(%struct.gdbarch* %0, %struct.regcache* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.regcache* %1, %struct.regcache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SPARC64_NUM_REGS, align 4
  %13 = icmp sge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SPARC64_D30_REGNUM, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %27 = sub nsw i32 %25, %26
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.regcache*, %struct.regcache** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @regcache_raw_write(%struct.regcache* %30, i32 %31, i8* %32)
  %34 = load %struct.regcache*, %struct.regcache** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = call i32 @regcache_raw_write(%struct.regcache* %34, i32 %36, i8* %38)
  br label %172

40:                                               ; preds = %19, %4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SPARC64_D32_REGNUM, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SPARC64_D62_REGNUM, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* @SPARC64_F32_REGNUM, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SPARC64_D32_REGNUM, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.regcache*, %struct.regcache** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @regcache_raw_write(%struct.regcache* %54, i32 %55, i8* %56)
  br label %171

58:                                               ; preds = %44, %40
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SPARC64_Q28_REGNUM, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  %67 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %70 = sub nsw i32 %68, %69
  %71 = mul nsw i32 4, %70
  %72 = add nsw i32 %67, %71
  store i32 %72, i32* %7, align 4
  %73 = load %struct.regcache*, %struct.regcache** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @regcache_raw_write(%struct.regcache* %73, i32 %74, i8* %75)
  %77 = load %struct.regcache*, %struct.regcache** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = call i32 @regcache_raw_write(%struct.regcache* %77, i32 %79, i8* %81)
  %83 = load %struct.regcache*, %struct.regcache** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 2
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 8
  %88 = call i32 @regcache_raw_write(%struct.regcache* %83, i32 %85, i8* %87)
  %89 = load %struct.regcache*, %struct.regcache** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 3
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 12
  %94 = call i32 @regcache_raw_write(%struct.regcache* %89, i32 %91, i8* %93)
  br label %170

95:                                               ; preds = %62, %58
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SPARC64_Q32_REGNUM, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SPARC64_Q60_REGNUM, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i32, i32* @SPARC64_F32_REGNUM, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SPARC64_Q32_REGNUM, align 4
  %107 = sub nsw i32 %105, %106
  %108 = mul nsw i32 2, %107
  %109 = add nsw i32 %104, %108
  store i32 %109, i32* %7, align 4
  %110 = load %struct.regcache*, %struct.regcache** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @regcache_raw_write(%struct.regcache* %110, i32 %111, i8* %112)
  %114 = load %struct.regcache*, %struct.regcache** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 8
  %119 = call i32 @regcache_raw_write(%struct.regcache* %114, i32 %116, i8* %118)
  br label %169

120:                                              ; preds = %99, %95
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 129
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 131
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 130
  br i1 %131, label %132, label %168

132:                                              ; preds = %129, %126, %123, %120
  %133 = load %struct.regcache*, %struct.regcache** %6, align 8
  %134 = load i32, i32* @SPARC64_STATE_REGNUM, align 4
  %135 = call i32 @regcache_raw_read_unsigned(%struct.regcache* %133, i32 %134, i32* %9)
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @extract_unsigned_integer(i8* %136, i32 8)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %7, align 4
  switch i32 %138, label %163 [
    i32 129, label %139
    i32 128, label %145
    i32 131, label %151
    i32 130, label %157
  ]

139:                                              ; preds = %132
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 31
  %142 = shl i32 %141, 0
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %163

145:                                              ; preds = %132
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 4095
  %148 = shl i32 %147, 8
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %163

151:                                              ; preds = %132
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %152, 255
  %154 = shl i32 %153, 24
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %163

157:                                              ; preds = %132
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %158, 255
  %160 = shl i32 %159, 32
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %132, %157, %151, %145, %139
  %164 = load %struct.regcache*, %struct.regcache** %6, align 8
  %165 = load i32, i32* @SPARC64_STATE_REGNUM, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @regcache_raw_write_unsigned(%struct.regcache* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %129
  br label %169

169:                                              ; preds = %168, %103
  br label %170

170:                                              ; preds = %169, %66
  br label %171

171:                                              ; preds = %170, %48
  br label %172

172:                                              ; preds = %171, %23
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_write(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @regcache_raw_read_unsigned(%struct.regcache*, i32, i32*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @regcache_raw_write_unsigned(%struct.regcache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
