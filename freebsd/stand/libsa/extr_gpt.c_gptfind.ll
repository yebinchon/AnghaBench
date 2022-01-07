; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptfind.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.gpt_ent = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dsk = type { i32, i32 }

@gpthdr = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: invalid partition index\0A\00", align 1
@BOOTPROG = common dso_local global i8* null, align 8
@gpttable = common dso_local global %struct.gpt_ent* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: specified partition is not UFS\0A\00", align 1
@curent = common dso_local global i32 0, align 4
@bootonce = common dso_local global i64 0, align 8
@GPT_ENT_ATTR_BOOTME = common dso_local global i32 0, align 4
@GPT_ENT_ATTR_BOOTONCE = common dso_local global i32 0, align 4
@hdr_primary_lba = common dso_local global i64 0, align 8
@table_primary = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@hdr_primary = common dso_local global i32 0, align 4
@hdr_backup_lba = common dso_local global i64 0, align 8
@table_backup = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@hdr_backup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gptfind(i32* %0, %struct.dsk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dsk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpt_ent*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dsk* %1, %struct.dsk** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gpthdr, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %12
  %22 = load i8*, i8** @BOOTPROG, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %4, align 4
  br label %217

24:                                               ; preds = %15
  %25 = load %struct.gpt_ent*, %struct.gpt_ent** @gpttable, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %25, i64 %28
  store %struct.gpt_ent* %29, %struct.gpt_ent** %8, align 8
  %30 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %31 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %30, i32 0, i32 2
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @bcmp(i32* %31, i32* %32, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i8*, i8** @BOOTPROG, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %4, align 4
  br label %217

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* @curent, align 4
  br label %163

41:                                               ; preds = %3
  %42 = load i32, i32* @curent, align 4
  %43 = icmp eq i32 %42, -1
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @curent, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @curent, align 4
  %47 = load i32, i32* @curent, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gpthdr, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gpthdr, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @curent, align 4
  store i32 -1, i32* %4, align 4
  br label %217

56:                                               ; preds = %41
  %57 = load i64, i64* @bootonce, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %94, %59
  %61 = load i32, i32* @curent, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gpthdr, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load %struct.gpt_ent*, %struct.gpt_ent** @gpttable, align 8
  %68 = load i32, i32* @curent, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %67, i64 %69
  store %struct.gpt_ent* %70, %struct.gpt_ent** %8, align 8
  %71 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %72 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %71, i32 0, i32 2
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @bcmp(i32* %72, i32* %73, i32 4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %94

77:                                               ; preds = %66
  %78 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %79 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %94

85:                                               ; preds = %77
  %86 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %87 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %94

93:                                               ; preds = %85
  br label %163

94:                                               ; preds = %92, %84, %76
  %95 = load i32, i32* @curent, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @curent, align 4
  br label %60

97:                                               ; preds = %60
  store i64 0, i64* @bootonce, align 8
  store i32 0, i32* @curent, align 4
  br label %98

98:                                               ; preds = %97, %56
  br label %99

99:                                               ; preds = %133, %98
  %100 = load i32, i32* @curent, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gpthdr, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %99
  %106 = load %struct.gpt_ent*, %struct.gpt_ent** @gpttable, align 8
  %107 = load i32, i32* @curent, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %106, i64 %108
  store %struct.gpt_ent* %109, %struct.gpt_ent** %8, align 8
  %110 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %111 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %110, i32 0, i32 2
  %112 = load i32*, i32** %5, align 8
  %113 = call i64 @bcmp(i32* %111, i32* %112, i32 4)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %133

116:                                              ; preds = %105
  %117 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %118 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %133

124:                                              ; preds = %116
  %125 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %126 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %133

132:                                              ; preds = %124
  br label %163

133:                                              ; preds = %131, %123, %115
  %134 = load i32, i32* @curent, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @curent, align 4
  br label %99

136:                                              ; preds = %99
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  store i32 0, i32* @curent, align 4
  br label %140

140:                                              ; preds = %158, %139
  %141 = load i32, i32* @curent, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gpthdr, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %140
  %147 = load %struct.gpt_ent*, %struct.gpt_ent** @gpttable, align 8
  %148 = load i32, i32* @curent, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %147, i64 %149
  store %struct.gpt_ent* %150, %struct.gpt_ent** %8, align 8
  %151 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %152 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %151, i32 0, i32 2
  %153 = load i32*, i32** %5, align 8
  %154 = call i64 @bcmp(i32* %152, i32* %153, i32 4)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %158

157:                                              ; preds = %146
  br label %163

158:                                              ; preds = %156
  %159 = load i32, i32* @curent, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @curent, align 4
  br label %140

161:                                              ; preds = %140
  br label %162

162:                                              ; preds = %161, %136
  store i32 -1, i32* %4, align 4
  br label %217

163:                                              ; preds = %157, %132, %93, %38
  %164 = load i32, i32* @curent, align 4
  %165 = add nsw i32 %164, 1
  %166 = load %struct.dsk*, %struct.dsk** %6, align 8
  %167 = getelementptr inbounds %struct.dsk, %struct.dsk* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.gpt_ent*, %struct.gpt_ent** @gpttable, align 8
  %169 = load i32, i32* @curent, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %168, i64 %170
  store %struct.gpt_ent* %171, %struct.gpt_ent** %8, align 8
  %172 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %173 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dsk*, %struct.dsk** %6, align 8
  %176 = getelementptr inbounds %struct.dsk, %struct.dsk* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %178 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %216

183:                                              ; preds = %163
  %184 = load i64, i64* @hdr_primary_lba, align 8
  %185 = icmp sgt i64 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_primary, align 8
  %190 = load i32, i32* @curent, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %188
  store i32 %195, i32* %193, align 4
  %196 = load %struct.dsk*, %struct.dsk** %6, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_primary, align 8
  %198 = call i32 @gptupdate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.dsk* %196, i32* @hdr_primary, %struct.TYPE_5__* %197)
  br label %199

199:                                              ; preds = %186, %183
  %200 = load i64, i64* @hdr_backup_lba, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %199
  %203 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_backup, align 8
  %206 = load i32, i32* @curent, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, %204
  store i32 %211, i32* %209, align 4
  %212 = load %struct.dsk*, %struct.dsk** %6, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_backup, align 8
  %214 = call i32 @gptupdate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.dsk* %212, i32* @hdr_backup, %struct.TYPE_5__* %213)
  br label %215

215:                                              ; preds = %202, %199
  br label %216

216:                                              ; preds = %215, %163
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %162, %52, %35, %21
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @gptupdate(i8*, %struct.dsk*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
