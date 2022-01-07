; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emu_exec_one_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emu_exec_one_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@add_byte = common dso_local global i32 0, align 4
@add_word = common dso_local global i32 0, align 4
@add_long = common dso_local global i32 0, align 4
@or_byte = common dso_local global i32 0, align 4
@or_word = common dso_local global i32 0, align 4
@or_long = common dso_local global i32 0, align 4
@adc_byte = common dso_local global i32 0, align 4
@adc_word = common dso_local global i32 0, align 4
@adc_long = common dso_local global i32 0, align 4
@sbb_byte = common dso_local global i32 0, align 4
@sbb_word = common dso_local global i32 0, align 4
@sbb_long = common dso_local global i32 0, align 4
@and_byte = common dso_local global i32 0, align 4
@and_word = common dso_local global i32 0, align 4
@and_long = common dso_local global i32 0, align 4
@SYSMODE_SEGOVR_ES = common dso_local global i32 0, align 4
@sub_byte = common dso_local global i32 0, align 4
@sub_word = common dso_local global i32 0, align 4
@sub_long = common dso_local global i32 0, align 4
@SYSMODE_SEGOVR_CS = common dso_local global i32 0, align 4
@xor_byte = common dso_local global i32 0, align 4
@xor_word = common dso_local global i32 0, align 4
@xor_long = common dso_local global i32 0, align 4
@SYSMODE_SEGOVR_SS = common dso_local global i32 0, align 4
@cmp_word_no_return = common dso_local global i32 0, align 4
@cmp_long_no_return = common dso_local global i32 0, align 4
@SYSMODE_SEGOVR_DS = common dso_local global i32 0, align 4
@SYSMODE_SEGOVR_FS = common dso_local global i32 0, align 4
@SYSMODE_SEGOVR_GS = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_ADDR = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@test_word = common dso_local global i32 0, align 4
@test_long = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@F_IF = common dso_local global i32 0, align 4
@F_DF = common dso_local global i32 0, align 4
@SYSMODE_CLRMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emu_exec_one_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emu_exec_one_byte(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %4 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %5 = call i8* @fetch_byte_imm(%struct.x86emu* %4)
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %1111 [
    i32 0, label %8
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
    i32 4, label %26
    i32 5, label %30
    i32 6, label %35
    i32 7, label %42
    i32 8, label %48
    i32 9, label %52
    i32 10, label %57
    i32 11, label %61
    i32 12, label %66
    i32 13, label %70
    i32 14, label %75
    i32 15, label %82
    i32 16, label %85
    i32 17, label %89
    i32 18, label %94
    i32 19, label %98
    i32 20, label %103
    i32 21, label %107
    i32 22, label %112
    i32 23, label %119
    i32 24, label %125
    i32 25, label %129
    i32 26, label %134
    i32 27, label %138
    i32 28, label %143
    i32 29, label %147
    i32 30, label %152
    i32 31, label %159
    i32 32, label %165
    i32 33, label %169
    i32 34, label %174
    i32 35, label %178
    i32 36, label %183
    i32 37, label %187
    i32 38, label %192
    i32 39, label %199
    i32 40, label %209
    i32 41, label %213
    i32 42, label %218
    i32 43, label %222
    i32 44, label %227
    i32 45, label %231
    i32 46, label %236
    i32 47, label %243
    i32 48, label %253
    i32 49, label %257
    i32 50, label %262
    i32 51, label %266
    i32 52, label %271
    i32 53, label %275
    i32 54, label %280
    i32 55, label %287
    i32 56, label %297
    i32 57, label %300
    i32 58, label %305
    i32 59, label %308
    i32 60, label %311
    i32 61, label %314
    i32 62, label %317
    i32 63, label %324
    i32 64, label %334
    i32 65, label %340
    i32 66, label %346
    i32 67, label %352
    i32 68, label %358
    i32 69, label %364
    i32 70, label %370
    i32 71, label %376
    i32 72, label %382
    i32 73, label %388
    i32 74, label %394
    i32 75, label %400
    i32 76, label %406
    i32 77, label %412
    i32 78, label %418
    i32 79, label %424
    i32 80, label %430
    i32 81, label %436
    i32 82, label %442
    i32 83, label %448
    i32 84, label %454
    i32 85, label %460
    i32 86, label %466
    i32 87, label %472
    i32 88, label %478
    i32 89, label %484
    i32 90, label %490
    i32 91, label %496
    i32 92, label %502
    i32 93, label %508
    i32 94, label %514
    i32 95, label %520
    i32 96, label %526
    i32 97, label %529
    i32 100, label %532
    i32 101, label %539
    i32 102, label %546
    i32 103, label %553
    i32 104, label %560
    i32 105, label %563
    i32 106, label %566
    i32 107, label %569
    i32 108, label %572
    i32 109, label %575
    i32 110, label %578
    i32 111, label %581
    i32 112, label %584
    i32 113, label %589
    i32 114, label %597
    i32 115, label %602
    i32 116, label %610
    i32 117, label %615
    i32 118, label %623
    i32 119, label %636
    i32 120, label %650
    i32 121, label %655
    i32 122, label %663
    i32 123, label %668
    i32 124, label %676
    i32 125, label %679
    i32 126, label %682
    i32 127, label %685
    i32 128, label %688
    i32 129, label %691
    i32 130, label %694
    i32 131, label %697
    i32 132, label %700
    i32 133, label %703
    i32 134, label %708
    i32 135, label %711
    i32 136, label %714
    i32 137, label %717
    i32 138, label %720
    i32 139, label %723
    i32 140, label %726
    i32 141, label %729
    i32 142, label %732
    i32 143, label %735
    i32 144, label %738
    i32 145, label %739
    i32 146, label %742
    i32 147, label %745
    i32 148, label %748
    i32 149, label %751
    i32 150, label %754
    i32 151, label %757
    i32 152, label %760
    i32 153, label %763
    i32 154, label %766
    i32 155, label %769
    i32 156, label %770
    i32 157, label %773
    i32 158, label %776
    i32 159, label %779
    i32 160, label %782
    i32 161, label %785
    i32 162, label %788
    i32 163, label %791
    i32 164, label %794
    i32 165, label %797
    i32 166, label %800
    i32 167, label %803
    i32 168, label %806
    i32 169, label %815
    i32 170, label %818
    i32 171, label %821
    i32 172, label %824
    i32 173, label %827
    i32 174, label %830
    i32 175, label %833
    i32 176, label %836
    i32 177, label %842
    i32 178, label %848
    i32 179, label %854
    i32 180, label %860
    i32 181, label %866
    i32 182, label %872
    i32 183, label %878
    i32 184, label %884
    i32 185, label %887
    i32 186, label %890
    i32 187, label %893
    i32 188, label %896
    i32 189, label %899
    i32 190, label %902
    i32 191, label %905
    i32 192, label %908
    i32 193, label %911
    i32 194, label %914
    i32 195, label %917
    i32 196, label %923
    i32 197, label %929
    i32 198, label %935
    i32 199, label %938
    i32 200, label %941
    i32 201, label %944
    i32 202, label %947
    i32 203, label %950
    i32 204, label %953
    i32 205, label %956
    i32 206, label %959
    i32 207, label %962
    i32 208, label %965
    i32 209, label %968
    i32 210, label %971
    i32 211, label %974
    i32 212, label %977
    i32 213, label %980
    i32 215, label %983
    i32 216, label %986
    i32 217, label %989
    i32 218, label %992
    i32 219, label %995
    i32 220, label %998
    i32 221, label %1001
    i32 222, label %1004
    i32 223, label %1007
    i32 224, label %1010
    i32 225, label %1013
    i32 226, label %1016
    i32 227, label %1019
    i32 228, label %1022
    i32 229, label %1025
    i32 230, label %1028
    i32 231, label %1031
    i32 232, label %1034
    i32 233, label %1037
    i32 234, label %1040
    i32 235, label %1043
    i32 236, label %1046
    i32 237, label %1049
    i32 238, label %1052
    i32 239, label %1055
    i32 240, label %1058
    i32 242, label %1061
    i32 243, label %1068
    i32 244, label %1075
    i32 245, label %1078
    i32 246, label %1081
    i32 247, label %1084
    i32 248, label %1087
    i32 249, label %1090
    i32 250, label %1093
    i32 251, label %1096
    i32 252, label %1099
    i32 253, label %1102
    i32 254, label %1105
    i32 255, label %1108
  ]

8:                                                ; preds = %1
  %9 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %10 = load i32, i32* @add_byte, align 4
  %11 = call i32 @common_binop_byte_rm_r(%struct.x86emu* %9, i32 %10)
  br label %1114

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = load i32, i32* @add_word, align 4
  %15 = load i32, i32* @add_long, align 4
  %16 = call i32 @common_binop_word_long_rm_r(%struct.x86emu* %13, i32 %14, i32 %15)
  br label %1114

17:                                               ; preds = %1
  %18 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %19 = load i32, i32* @add_byte, align 4
  %20 = call i32 @common_binop_byte_r_rm(%struct.x86emu* %18, i32 %19)
  br label %1114

21:                                               ; preds = %1
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = load i32, i32* @add_word, align 4
  %24 = load i32, i32* @add_long, align 4
  %25 = call i32 @common_binop_word_long_r_rm(%struct.x86emu* %22, i32 %23, i32 %24)
  br label %1114

26:                                               ; preds = %1
  %27 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %28 = load i32, i32* @add_byte, align 4
  %29 = call i32 @common_binop_byte_imm(%struct.x86emu* %27, i32 %28)
  br label %1114

30:                                               ; preds = %1
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = load i32, i32* @add_word, align 4
  %33 = load i32, i32* @add_long, align 4
  %34 = call i32 @common_binop_word_long_imm(%struct.x86emu* %31, i32 %32, i32 %33)
  br label %1114

35:                                               ; preds = %1
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @push_word(%struct.x86emu* %36, i8* %40)
  br label %1114

42:                                               ; preds = %1
  %43 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %44 = call i8* @pop_word(%struct.x86emu* %43)
  %45 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %46 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  br label %1114

48:                                               ; preds = %1
  %49 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %50 = load i32, i32* @or_byte, align 4
  %51 = call i32 @common_binop_byte_rm_r(%struct.x86emu* %49, i32 %50)
  br label %1114

52:                                               ; preds = %1
  %53 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %54 = load i32, i32* @or_word, align 4
  %55 = load i32, i32* @or_long, align 4
  %56 = call i32 @common_binop_word_long_rm_r(%struct.x86emu* %53, i32 %54, i32 %55)
  br label %1114

57:                                               ; preds = %1
  %58 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %59 = load i32, i32* @or_byte, align 4
  %60 = call i32 @common_binop_byte_r_rm(%struct.x86emu* %58, i32 %59)
  br label %1114

61:                                               ; preds = %1
  %62 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %63 = load i32, i32* @or_word, align 4
  %64 = load i32, i32* @or_long, align 4
  %65 = call i32 @common_binop_word_long_r_rm(%struct.x86emu* %62, i32 %63, i32 %64)
  br label %1114

66:                                               ; preds = %1
  %67 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %68 = load i32, i32* @or_byte, align 4
  %69 = call i32 @common_binop_byte_imm(%struct.x86emu* %67, i32 %68)
  br label %1114

70:                                               ; preds = %1
  %71 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %72 = load i32, i32* @or_word, align 4
  %73 = load i32, i32* @or_long, align 4
  %74 = call i32 @common_binop_word_long_imm(%struct.x86emu* %71, i32 %72, i32 %73)
  br label %1114

75:                                               ; preds = %1
  %76 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %77 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %78 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 22
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @push_word(%struct.x86emu* %76, i8* %80)
  br label %1114

82:                                               ; preds = %1
  %83 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %84 = call i32 @x86emu_exec_two_byte(%struct.x86emu* %83)
  br label %1114

85:                                               ; preds = %1
  %86 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %87 = load i32, i32* @adc_byte, align 4
  %88 = call i32 @common_binop_byte_rm_r(%struct.x86emu* %86, i32 %87)
  br label %1114

89:                                               ; preds = %1
  %90 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %91 = load i32, i32* @adc_word, align 4
  %92 = load i32, i32* @adc_long, align 4
  %93 = call i32 @common_binop_word_long_rm_r(%struct.x86emu* %90, i32 %91, i32 %92)
  br label %1114

94:                                               ; preds = %1
  %95 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %96 = load i32, i32* @adc_byte, align 4
  %97 = call i32 @common_binop_byte_r_rm(%struct.x86emu* %95, i32 %96)
  br label %1114

98:                                               ; preds = %1
  %99 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %100 = load i32, i32* @adc_word, align 4
  %101 = load i32, i32* @adc_long, align 4
  %102 = call i32 @common_binop_word_long_r_rm(%struct.x86emu* %99, i32 %100, i32 %101)
  br label %1114

103:                                              ; preds = %1
  %104 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %105 = load i32, i32* @adc_byte, align 4
  %106 = call i32 @common_binop_byte_imm(%struct.x86emu* %104, i32 %105)
  br label %1114

107:                                              ; preds = %1
  %108 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %109 = load i32, i32* @adc_word, align 4
  %110 = load i32, i32* @adc_long, align 4
  %111 = call i32 @common_binop_word_long_imm(%struct.x86emu* %108, i32 %109, i32 %110)
  br label %1114

112:                                              ; preds = %1
  %113 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %114 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %115 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 21
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @push_word(%struct.x86emu* %113, i8* %117)
  br label %1114

119:                                              ; preds = %1
  %120 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %121 = call i8* @pop_word(%struct.x86emu* %120)
  %122 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %123 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 21
  store i8* %121, i8** %124, align 8
  br label %1114

125:                                              ; preds = %1
  %126 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %127 = load i32, i32* @sbb_byte, align 4
  %128 = call i32 @common_binop_byte_rm_r(%struct.x86emu* %126, i32 %127)
  br label %1114

129:                                              ; preds = %1
  %130 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %131 = load i32, i32* @sbb_word, align 4
  %132 = load i32, i32* @sbb_long, align 4
  %133 = call i32 @common_binop_word_long_rm_r(%struct.x86emu* %130, i32 %131, i32 %132)
  br label %1114

134:                                              ; preds = %1
  %135 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %136 = load i32, i32* @sbb_byte, align 4
  %137 = call i32 @common_binop_byte_r_rm(%struct.x86emu* %135, i32 %136)
  br label %1114

138:                                              ; preds = %1
  %139 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %140 = load i32, i32* @sbb_word, align 4
  %141 = load i32, i32* @sbb_long, align 4
  %142 = call i32 @common_binop_word_long_r_rm(%struct.x86emu* %139, i32 %140, i32 %141)
  br label %1114

143:                                              ; preds = %1
  %144 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %145 = load i32, i32* @sbb_byte, align 4
  %146 = call i32 @common_binop_byte_imm(%struct.x86emu* %144, i32 %145)
  br label %1114

147:                                              ; preds = %1
  %148 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %149 = load i32, i32* @sbb_word, align 4
  %150 = load i32, i32* @sbb_long, align 4
  %151 = call i32 @common_binop_word_long_imm(%struct.x86emu* %148, i32 %149, i32 %150)
  br label %1114

152:                                              ; preds = %1
  %153 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %154 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %155 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @push_word(%struct.x86emu* %153, i8* %157)
  br label %1114

159:                                              ; preds = %1
  %160 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %161 = call i8* @pop_word(%struct.x86emu* %160)
  %162 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %163 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  br label %1114

165:                                              ; preds = %1
  %166 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %167 = load i32, i32* @and_byte, align 4
  %168 = call i32 @common_binop_byte_rm_r(%struct.x86emu* %166, i32 %167)
  br label %1114

169:                                              ; preds = %1
  %170 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %171 = load i32, i32* @and_word, align 4
  %172 = load i32, i32* @and_long, align 4
  %173 = call i32 @common_binop_word_long_rm_r(%struct.x86emu* %170, i32 %171, i32 %172)
  br label %1114

174:                                              ; preds = %1
  %175 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %176 = load i32, i32* @and_byte, align 4
  %177 = call i32 @common_binop_byte_r_rm(%struct.x86emu* %175, i32 %176)
  br label %1114

178:                                              ; preds = %1
  %179 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %180 = load i32, i32* @and_word, align 4
  %181 = load i32, i32* @and_long, align 4
  %182 = call i32 @common_binop_word_long_r_rm(%struct.x86emu* %179, i32 %180, i32 %181)
  br label %1114

183:                                              ; preds = %1
  %184 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %185 = load i32, i32* @and_byte, align 4
  %186 = call i32 @common_binop_byte_imm(%struct.x86emu* %184, i32 %185)
  br label %1114

187:                                              ; preds = %1
  %188 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %189 = load i32, i32* @and_word, align 4
  %190 = load i32, i32* @and_long, align 4
  %191 = call i32 @common_binop_word_long_imm(%struct.x86emu* %188, i32 %189, i32 %190)
  br label %1114

192:                                              ; preds = %1
  %193 = load i32, i32* @SYSMODE_SEGOVR_ES, align 4
  %194 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %195 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %193
  store i32 %198, i32* %196, align 8
  br label %1114

199:                                              ; preds = %1
  %200 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %201 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %202 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 11
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @daa_byte(%struct.x86emu* %200, i8* %204)
  %206 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %207 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 11
  store i8* %205, i8** %208, align 8
  br label %1114

209:                                              ; preds = %1
  %210 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %211 = load i32, i32* @sub_byte, align 4
  %212 = call i32 @common_binop_byte_rm_r(%struct.x86emu* %210, i32 %211)
  br label %1114

213:                                              ; preds = %1
  %214 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %215 = load i32, i32* @sub_word, align 4
  %216 = load i32, i32* @sub_long, align 4
  %217 = call i32 @common_binop_word_long_rm_r(%struct.x86emu* %214, i32 %215, i32 %216)
  br label %1114

218:                                              ; preds = %1
  %219 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %220 = load i32, i32* @sub_byte, align 4
  %221 = call i32 @common_binop_byte_r_rm(%struct.x86emu* %219, i32 %220)
  br label %1114

222:                                              ; preds = %1
  %223 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %224 = load i32, i32* @sub_word, align 4
  %225 = load i32, i32* @sub_long, align 4
  %226 = call i32 @common_binop_word_long_r_rm(%struct.x86emu* %223, i32 %224, i32 %225)
  br label %1114

227:                                              ; preds = %1
  %228 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %229 = load i32, i32* @sub_byte, align 4
  %230 = call i32 @common_binop_byte_imm(%struct.x86emu* %228, i32 %229)
  br label %1114

231:                                              ; preds = %1
  %232 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %233 = load i32, i32* @sub_word, align 4
  %234 = load i32, i32* @sub_long, align 4
  %235 = call i32 @common_binop_word_long_imm(%struct.x86emu* %232, i32 %233, i32 %234)
  br label %1114

236:                                              ; preds = %1
  %237 = load i32, i32* @SYSMODE_SEGOVR_CS, align 4
  %238 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %239 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %237
  store i32 %242, i32* %240, align 8
  br label %1114

243:                                              ; preds = %1
  %244 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %245 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %246 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 11
  %248 = load i8*, i8** %247, align 8
  %249 = call i8* @das_byte(%struct.x86emu* %244, i8* %248)
  %250 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %251 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 11
  store i8* %249, i8** %252, align 8
  br label %1114

253:                                              ; preds = %1
  %254 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %255 = load i32, i32* @xor_byte, align 4
  %256 = call i32 @common_binop_byte_rm_r(%struct.x86emu* %254, i32 %255)
  br label %1114

257:                                              ; preds = %1
  %258 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %259 = load i32, i32* @xor_word, align 4
  %260 = load i32, i32* @xor_long, align 4
  %261 = call i32 @common_binop_word_long_rm_r(%struct.x86emu* %258, i32 %259, i32 %260)
  br label %1114

262:                                              ; preds = %1
  %263 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %264 = load i32, i32* @xor_byte, align 4
  %265 = call i32 @common_binop_byte_r_rm(%struct.x86emu* %263, i32 %264)
  br label %1114

266:                                              ; preds = %1
  %267 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %268 = load i32, i32* @xor_word, align 4
  %269 = load i32, i32* @xor_long, align 4
  %270 = call i32 @common_binop_word_long_r_rm(%struct.x86emu* %267, i32 %268, i32 %269)
  br label %1114

271:                                              ; preds = %1
  %272 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %273 = load i32, i32* @xor_byte, align 4
  %274 = call i32 @common_binop_byte_imm(%struct.x86emu* %272, i32 %273)
  br label %1114

275:                                              ; preds = %1
  %276 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %277 = load i32, i32* @xor_word, align 4
  %278 = load i32, i32* @xor_long, align 4
  %279 = call i32 @common_binop_word_long_imm(%struct.x86emu* %276, i32 %277, i32 %278)
  br label %1114

280:                                              ; preds = %1
  %281 = load i32, i32* @SYSMODE_SEGOVR_SS, align 4
  %282 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %283 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %281
  store i32 %286, i32* %284, align 8
  br label %1114

287:                                              ; preds = %1
  %288 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %289 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %290 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 20
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @aaa_word(%struct.x86emu* %288, i32 %292)
  %294 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %295 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 20
  store i32 %293, i32* %296, align 8
  br label %1114

297:                                              ; preds = %1
  %298 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %299 = call i32 @common_binop_ns_byte_rm_r(%struct.x86emu* %298, i32 (%struct.x86emu*, i8*, i8*)* @cmp_byte_no_return)
  br label %1114

300:                                              ; preds = %1
  %301 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %302 = load i32, i32* @cmp_word_no_return, align 4
  %303 = load i32, i32* @cmp_long_no_return, align 4
  %304 = call i32 @common_binop_ns_word_long_rm_r(%struct.x86emu* %301, i32 %302, i32 %303)
  br label %1114

305:                                              ; preds = %1
  %306 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %307 = call i32 @x86emuOp_cmp_byte_R_RM(%struct.x86emu* %306)
  br label %1114

308:                                              ; preds = %1
  %309 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %310 = call i32 @x86emuOp_cmp_word_R_RM(%struct.x86emu* %309)
  br label %1114

311:                                              ; preds = %1
  %312 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %313 = call i32 @x86emuOp_cmp_byte_AL_IMM(%struct.x86emu* %312)
  br label %1114

314:                                              ; preds = %1
  %315 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %316 = call i32 @x86emuOp_cmp_word_AX_IMM(%struct.x86emu* %315)
  br label %1114

317:                                              ; preds = %1
  %318 = load i32, i32* @SYSMODE_SEGOVR_DS, align 4
  %319 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %320 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = or i32 %322, %318
  store i32 %323, i32* %321, align 8
  br label %1114

324:                                              ; preds = %1
  %325 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %326 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %327 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 20
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @aas_word(%struct.x86emu* %325, i32 %329)
  %331 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %332 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 20
  store i32 %330, i32* %333, align 8
  br label %1114

334:                                              ; preds = %1
  %335 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %336 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %337 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 19
  %339 = call i32 @common_inc_word_long(%struct.x86emu* %335, i32* %338)
  br label %1114

340:                                              ; preds = %1
  %341 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %342 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %343 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 18
  %345 = call i32 @common_inc_word_long(%struct.x86emu* %341, i32* %344)
  br label %1114

346:                                              ; preds = %1
  %347 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %348 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %349 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 17
  %351 = call i32 @common_inc_word_long(%struct.x86emu* %347, i32* %350)
  br label %1114

352:                                              ; preds = %1
  %353 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %354 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %355 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i32 0, i32 16
  %357 = call i32 @common_inc_word_long(%struct.x86emu* %353, i32* %356)
  br label %1114

358:                                              ; preds = %1
  %359 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %360 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %361 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 15
  %363 = call i32 @common_inc_word_long(%struct.x86emu* %359, i32* %362)
  br label %1114

364:                                              ; preds = %1
  %365 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %366 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %367 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 14
  %369 = call i32 @common_inc_word_long(%struct.x86emu* %365, i32* %368)
  br label %1114

370:                                              ; preds = %1
  %371 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %372 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %373 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 13
  %375 = call i32 @common_inc_word_long(%struct.x86emu* %371, i32* %374)
  br label %1114

376:                                              ; preds = %1
  %377 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %378 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %379 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %379, i32 0, i32 12
  %381 = call i32 @common_inc_word_long(%struct.x86emu* %377, i32* %380)
  br label %1114

382:                                              ; preds = %1
  %383 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %384 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %385 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 19
  %387 = call i32 @common_dec_word_long(%struct.x86emu* %383, i32* %386)
  br label %1114

388:                                              ; preds = %1
  %389 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %390 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %391 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %391, i32 0, i32 18
  %393 = call i32 @common_dec_word_long(%struct.x86emu* %389, i32* %392)
  br label %1114

394:                                              ; preds = %1
  %395 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %396 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %397 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 17
  %399 = call i32 @common_dec_word_long(%struct.x86emu* %395, i32* %398)
  br label %1114

400:                                              ; preds = %1
  %401 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %402 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %403 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 16
  %405 = call i32 @common_dec_word_long(%struct.x86emu* %401, i32* %404)
  br label %1114

406:                                              ; preds = %1
  %407 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %408 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %409 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 15
  %411 = call i32 @common_dec_word_long(%struct.x86emu* %407, i32* %410)
  br label %1114

412:                                              ; preds = %1
  %413 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %414 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %415 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 14
  %417 = call i32 @common_dec_word_long(%struct.x86emu* %413, i32* %416)
  br label %1114

418:                                              ; preds = %1
  %419 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %420 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %421 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 13
  %423 = call i32 @common_dec_word_long(%struct.x86emu* %419, i32* %422)
  br label %1114

424:                                              ; preds = %1
  %425 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %426 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %427 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 12
  %429 = call i32 @common_dec_word_long(%struct.x86emu* %425, i32* %428)
  br label %1114

430:                                              ; preds = %1
  %431 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %432 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %433 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %433, i32 0, i32 19
  %435 = call i32 @common_push_word_long(%struct.x86emu* %431, i32* %434)
  br label %1114

436:                                              ; preds = %1
  %437 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %438 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %439 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 18
  %441 = call i32 @common_push_word_long(%struct.x86emu* %437, i32* %440)
  br label %1114

442:                                              ; preds = %1
  %443 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %444 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %445 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %445, i32 0, i32 17
  %447 = call i32 @common_push_word_long(%struct.x86emu* %443, i32* %446)
  br label %1114

448:                                              ; preds = %1
  %449 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %450 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %451 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 16
  %453 = call i32 @common_push_word_long(%struct.x86emu* %449, i32* %452)
  br label %1114

454:                                              ; preds = %1
  %455 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %456 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %457 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %457, i32 0, i32 15
  %459 = call i32 @common_push_word_long(%struct.x86emu* %455, i32* %458)
  br label %1114

460:                                              ; preds = %1
  %461 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %462 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %463 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 14
  %465 = call i32 @common_push_word_long(%struct.x86emu* %461, i32* %464)
  br label %1114

466:                                              ; preds = %1
  %467 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %468 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %469 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %469, i32 0, i32 13
  %471 = call i32 @common_push_word_long(%struct.x86emu* %467, i32* %470)
  br label %1114

472:                                              ; preds = %1
  %473 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %474 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %475 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %475, i32 0, i32 12
  %477 = call i32 @common_push_word_long(%struct.x86emu* %473, i32* %476)
  br label %1114

478:                                              ; preds = %1
  %479 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %480 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %481 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i32 0, i32 19
  %483 = call i32 @common_pop_word_long(%struct.x86emu* %479, i32* %482)
  br label %1114

484:                                              ; preds = %1
  %485 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %486 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %487 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %487, i32 0, i32 18
  %489 = call i32 @common_pop_word_long(%struct.x86emu* %485, i32* %488)
  br label %1114

490:                                              ; preds = %1
  %491 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %492 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %493 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %493, i32 0, i32 17
  %495 = call i32 @common_pop_word_long(%struct.x86emu* %491, i32* %494)
  br label %1114

496:                                              ; preds = %1
  %497 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %498 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %499 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %499, i32 0, i32 16
  %501 = call i32 @common_pop_word_long(%struct.x86emu* %497, i32* %500)
  br label %1114

502:                                              ; preds = %1
  %503 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %504 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %505 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %505, i32 0, i32 15
  %507 = call i32 @common_pop_word_long(%struct.x86emu* %503, i32* %506)
  br label %1114

508:                                              ; preds = %1
  %509 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %510 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %511 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %511, i32 0, i32 14
  %513 = call i32 @common_pop_word_long(%struct.x86emu* %509, i32* %512)
  br label %1114

514:                                              ; preds = %1
  %515 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %516 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %517 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %517, i32 0, i32 13
  %519 = call i32 @common_pop_word_long(%struct.x86emu* %515, i32* %518)
  br label %1114

520:                                              ; preds = %1
  %521 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %522 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %523 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %523, i32 0, i32 12
  %525 = call i32 @common_pop_word_long(%struct.x86emu* %521, i32* %524)
  br label %1114

526:                                              ; preds = %1
  %527 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %528 = call i32 @x86emuOp_push_all(%struct.x86emu* %527)
  br label %1114

529:                                              ; preds = %1
  %530 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %531 = call i32 @x86emuOp_pop_all(%struct.x86emu* %530)
  br label %1114

532:                                              ; preds = %1
  %533 = load i32, i32* @SYSMODE_SEGOVR_FS, align 4
  %534 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %535 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = or i32 %537, %533
  store i32 %538, i32* %536, align 8
  br label %1114

539:                                              ; preds = %1
  %540 = load i32, i32* @SYSMODE_SEGOVR_GS, align 4
  %541 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %542 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = or i32 %544, %540
  store i32 %545, i32* %543, align 8
  br label %1114

546:                                              ; preds = %1
  %547 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %548 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %549 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = or i32 %551, %547
  store i32 %552, i32* %550, align 8
  br label %1114

553:                                              ; preds = %1
  %554 = load i32, i32* @SYSMODE_PREFIX_ADDR, align 4
  %555 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %556 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = or i32 %558, %554
  store i32 %559, i32* %557, align 8
  br label %1114

560:                                              ; preds = %1
  %561 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %562 = call i32 @x86emuOp_push_word_IMM(%struct.x86emu* %561)
  br label %1114

563:                                              ; preds = %1
  %564 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %565 = call i32 @common_imul_imm(%struct.x86emu* %564, i32 0)
  br label %1114

566:                                              ; preds = %1
  %567 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %568 = call i32 @x86emuOp_push_byte_IMM(%struct.x86emu* %567)
  br label %1114

569:                                              ; preds = %1
  %570 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %571 = call i32 @common_imul_imm(%struct.x86emu* %570, i32 1)
  br label %1114

572:                                              ; preds = %1
  %573 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %574 = call i32 @ins(%struct.x86emu* %573, i32 1)
  br label %1114

575:                                              ; preds = %1
  %576 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %577 = call i32 @x86emuOp_ins_word(%struct.x86emu* %576)
  br label %1114

578:                                              ; preds = %1
  %579 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %580 = call i32 @outs(%struct.x86emu* %579, i32 1)
  br label %1114

581:                                              ; preds = %1
  %582 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %583 = call i32 @x86emuOp_outs_word(%struct.x86emu* %582)
  br label %1114

584:                                              ; preds = %1
  %585 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %586 = load i32, i32* @F_OF, align 4
  %587 = call i32 @ACCESS_FLAG(i32 %586)
  %588 = call i32 @common_jmp_near(%struct.x86emu* %585, i32 %587)
  br label %1114

589:                                              ; preds = %1
  %590 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %591 = load i32, i32* @F_OF, align 4
  %592 = call i32 @ACCESS_FLAG(i32 %591)
  %593 = icmp ne i32 %592, 0
  %594 = xor i1 %593, true
  %595 = zext i1 %594 to i32
  %596 = call i32 @common_jmp_near(%struct.x86emu* %590, i32 %595)
  br label %1114

597:                                              ; preds = %1
  %598 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %599 = load i32, i32* @F_CF, align 4
  %600 = call i32 @ACCESS_FLAG(i32 %599)
  %601 = call i32 @common_jmp_near(%struct.x86emu* %598, i32 %600)
  br label %1114

602:                                              ; preds = %1
  %603 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %604 = load i32, i32* @F_CF, align 4
  %605 = call i32 @ACCESS_FLAG(i32 %604)
  %606 = icmp ne i32 %605, 0
  %607 = xor i1 %606, true
  %608 = zext i1 %607 to i32
  %609 = call i32 @common_jmp_near(%struct.x86emu* %603, i32 %608)
  br label %1114

610:                                              ; preds = %1
  %611 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %612 = load i32, i32* @F_ZF, align 4
  %613 = call i32 @ACCESS_FLAG(i32 %612)
  %614 = call i32 @common_jmp_near(%struct.x86emu* %611, i32 %613)
  br label %1114

615:                                              ; preds = %1
  %616 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %617 = load i32, i32* @F_ZF, align 4
  %618 = call i32 @ACCESS_FLAG(i32 %617)
  %619 = icmp ne i32 %618, 0
  %620 = xor i1 %619, true
  %621 = zext i1 %620 to i32
  %622 = call i32 @common_jmp_near(%struct.x86emu* %616, i32 %621)
  br label %1114

623:                                              ; preds = %1
  %624 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %625 = load i32, i32* @F_CF, align 4
  %626 = call i32 @ACCESS_FLAG(i32 %625)
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %632, label %628

628:                                              ; preds = %623
  %629 = load i32, i32* @F_ZF, align 4
  %630 = call i32 @ACCESS_FLAG(i32 %629)
  %631 = icmp ne i32 %630, 0
  br label %632

632:                                              ; preds = %628, %623
  %633 = phi i1 [ true, %623 ], [ %631, %628 ]
  %634 = zext i1 %633 to i32
  %635 = call i32 @common_jmp_near(%struct.x86emu* %624, i32 %634)
  br label %1114

636:                                              ; preds = %1
  %637 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %638 = load i32, i32* @F_CF, align 4
  %639 = call i32 @ACCESS_FLAG(i32 %638)
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %646, label %641

641:                                              ; preds = %636
  %642 = load i32, i32* @F_ZF, align 4
  %643 = call i32 @ACCESS_FLAG(i32 %642)
  %644 = icmp ne i32 %643, 0
  %645 = xor i1 %644, true
  br label %646

646:                                              ; preds = %641, %636
  %647 = phi i1 [ false, %636 ], [ %645, %641 ]
  %648 = zext i1 %647 to i32
  %649 = call i32 @common_jmp_near(%struct.x86emu* %637, i32 %648)
  br label %1114

650:                                              ; preds = %1
  %651 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %652 = load i32, i32* @F_SF, align 4
  %653 = call i32 @ACCESS_FLAG(i32 %652)
  %654 = call i32 @common_jmp_near(%struct.x86emu* %651, i32 %653)
  br label %1114

655:                                              ; preds = %1
  %656 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %657 = load i32, i32* @F_SF, align 4
  %658 = call i32 @ACCESS_FLAG(i32 %657)
  %659 = icmp ne i32 %658, 0
  %660 = xor i1 %659, true
  %661 = zext i1 %660 to i32
  %662 = call i32 @common_jmp_near(%struct.x86emu* %656, i32 %661)
  br label %1114

663:                                              ; preds = %1
  %664 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %665 = load i32, i32* @F_PF, align 4
  %666 = call i32 @ACCESS_FLAG(i32 %665)
  %667 = call i32 @common_jmp_near(%struct.x86emu* %664, i32 %666)
  br label %1114

668:                                              ; preds = %1
  %669 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %670 = load i32, i32* @F_PF, align 4
  %671 = call i32 @ACCESS_FLAG(i32 %670)
  %672 = icmp ne i32 %671, 0
  %673 = xor i1 %672, true
  %674 = zext i1 %673 to i32
  %675 = call i32 @common_jmp_near(%struct.x86emu* %669, i32 %674)
  br label %1114

676:                                              ; preds = %1
  %677 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %678 = call i32 @x86emuOp_jump_near_L(%struct.x86emu* %677)
  br label %1114

679:                                              ; preds = %1
  %680 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %681 = call i32 @x86emuOp_jump_near_NL(%struct.x86emu* %680)
  br label %1114

682:                                              ; preds = %1
  %683 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %684 = call i32 @x86emuOp_jump_near_LE(%struct.x86emu* %683)
  br label %1114

685:                                              ; preds = %1
  %686 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %687 = call i32 @x86emuOp_jump_near_NLE(%struct.x86emu* %686)
  br label %1114

688:                                              ; preds = %1
  %689 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %690 = call i32 @x86emuOp_opc80_byte_RM_IMM(%struct.x86emu* %689)
  br label %1114

691:                                              ; preds = %1
  %692 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %693 = call i32 @x86emuOp_opc81_word_RM_IMM(%struct.x86emu* %692)
  br label %1114

694:                                              ; preds = %1
  %695 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %696 = call i32 @x86emuOp_opc82_byte_RM_IMM(%struct.x86emu* %695)
  br label %1114

697:                                              ; preds = %1
  %698 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %699 = call i32 @x86emuOp_opc83_word_RM_IMM(%struct.x86emu* %698)
  br label %1114

700:                                              ; preds = %1
  %701 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %702 = call i32 @common_binop_ns_byte_rm_r(%struct.x86emu* %701, i32 (%struct.x86emu*, i8*, i8*)* @test_byte)
  br label %1114

703:                                              ; preds = %1
  %704 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %705 = load i32, i32* @test_word, align 4
  %706 = load i32, i32* @test_long, align 4
  %707 = call i32 @common_binop_ns_word_long_rm_r(%struct.x86emu* %704, i32 %705, i32 %706)
  br label %1114

708:                                              ; preds = %1
  %709 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %710 = call i32 @x86emuOp_xchg_byte_RM_R(%struct.x86emu* %709)
  br label %1114

711:                                              ; preds = %1
  %712 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %713 = call i32 @x86emuOp_xchg_word_RM_R(%struct.x86emu* %712)
  br label %1114

714:                                              ; preds = %1
  %715 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %716 = call i32 @x86emuOp_mov_byte_RM_R(%struct.x86emu* %715)
  br label %1114

717:                                              ; preds = %1
  %718 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %719 = call i32 @x86emuOp_mov_word_RM_R(%struct.x86emu* %718)
  br label %1114

720:                                              ; preds = %1
  %721 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %722 = call i32 @x86emuOp_mov_byte_R_RM(%struct.x86emu* %721)
  br label %1114

723:                                              ; preds = %1
  %724 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %725 = call i32 @x86emuOp_mov_word_R_RM(%struct.x86emu* %724)
  br label %1114

726:                                              ; preds = %1
  %727 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %728 = call i32 @x86emuOp_mov_word_RM_SR(%struct.x86emu* %727)
  br label %1114

729:                                              ; preds = %1
  %730 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %731 = call i32 @x86emuOp_lea_word_R_M(%struct.x86emu* %730)
  br label %1114

732:                                              ; preds = %1
  %733 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %734 = call i32 @x86emuOp_mov_word_SR_RM(%struct.x86emu* %733)
  br label %1114

735:                                              ; preds = %1
  %736 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %737 = call i32 @x86emuOp_pop_RM(%struct.x86emu* %736)
  br label %1114

738:                                              ; preds = %1
  br label %1114

739:                                              ; preds = %1
  %740 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %741 = call i32 @x86emuOp_xchg_word_AX_CX(%struct.x86emu* %740)
  br label %1114

742:                                              ; preds = %1
  %743 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %744 = call i32 @x86emuOp_xchg_word_AX_DX(%struct.x86emu* %743)
  br label %1114

745:                                              ; preds = %1
  %746 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %747 = call i32 @x86emuOp_xchg_word_AX_BX(%struct.x86emu* %746)
  br label %1114

748:                                              ; preds = %1
  %749 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %750 = call i32 @x86emuOp_xchg_word_AX_SP(%struct.x86emu* %749)
  br label %1114

751:                                              ; preds = %1
  %752 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %753 = call i32 @x86emuOp_xchg_word_AX_BP(%struct.x86emu* %752)
  br label %1114

754:                                              ; preds = %1
  %755 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %756 = call i32 @x86emuOp_xchg_word_AX_SI(%struct.x86emu* %755)
  br label %1114

757:                                              ; preds = %1
  %758 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %759 = call i32 @x86emuOp_xchg_word_AX_DI(%struct.x86emu* %758)
  br label %1114

760:                                              ; preds = %1
  %761 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %762 = call i32 @x86emuOp_cbw(%struct.x86emu* %761)
  br label %1114

763:                                              ; preds = %1
  %764 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %765 = call i32 @x86emuOp_cwd(%struct.x86emu* %764)
  br label %1114

766:                                              ; preds = %1
  %767 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %768 = call i32 @x86emuOp_call_far_IMM(%struct.x86emu* %767)
  br label %1114

769:                                              ; preds = %1
  br label %1114

770:                                              ; preds = %1
  %771 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %772 = call i32 @x86emuOp_pushf_word(%struct.x86emu* %771)
  br label %1114

773:                                              ; preds = %1
  %774 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %775 = call i32 @x86emuOp_popf_word(%struct.x86emu* %774)
  br label %1114

776:                                              ; preds = %1
  %777 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %778 = call i32 @x86emuOp_sahf(%struct.x86emu* %777)
  br label %1114

779:                                              ; preds = %1
  %780 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %781 = call i32 @x86emuOp_lahf(%struct.x86emu* %780)
  br label %1114

782:                                              ; preds = %1
  %783 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %784 = call i32 @x86emuOp_mov_AL_M_IMM(%struct.x86emu* %783)
  br label %1114

785:                                              ; preds = %1
  %786 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %787 = call i32 @x86emuOp_mov_AX_M_IMM(%struct.x86emu* %786)
  br label %1114

788:                                              ; preds = %1
  %789 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %790 = call i32 @x86emuOp_mov_M_AL_IMM(%struct.x86emu* %789)
  br label %1114

791:                                              ; preds = %1
  %792 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %793 = call i32 @x86emuOp_mov_M_AX_IMM(%struct.x86emu* %792)
  br label %1114

794:                                              ; preds = %1
  %795 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %796 = call i32 @x86emuOp_movs_byte(%struct.x86emu* %795)
  br label %1114

797:                                              ; preds = %1
  %798 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %799 = call i32 @x86emuOp_movs_word(%struct.x86emu* %798)
  br label %1114

800:                                              ; preds = %1
  %801 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %802 = call i32 @x86emuOp_cmps_byte(%struct.x86emu* %801)
  br label %1114

803:                                              ; preds = %1
  %804 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %805 = call i32 @x86emuOp_cmps_word(%struct.x86emu* %804)
  br label %1114

806:                                              ; preds = %1
  %807 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %808 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %809 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %808, i32 0, i32 0
  %810 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %809, i32 0, i32 11
  %811 = load i8*, i8** %810, align 8
  %812 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %813 = call i8* @fetch_byte_imm(%struct.x86emu* %812)
  %814 = call i32 @test_byte(%struct.x86emu* %807, i8* %811, i8* %813)
  br label %1114

815:                                              ; preds = %1
  %816 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %817 = call i32 @x86emuOp_test_AX_IMM(%struct.x86emu* %816)
  br label %1114

818:                                              ; preds = %1
  %819 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %820 = call i32 @x86emuOp_stos_byte(%struct.x86emu* %819)
  br label %1114

821:                                              ; preds = %1
  %822 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %823 = call i32 @x86emuOp_stos_word(%struct.x86emu* %822)
  br label %1114

824:                                              ; preds = %1
  %825 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %826 = call i32 @x86emuOp_lods_byte(%struct.x86emu* %825)
  br label %1114

827:                                              ; preds = %1
  %828 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %829 = call i32 @x86emuOp_lods_word(%struct.x86emu* %828)
  br label %1114

830:                                              ; preds = %1
  %831 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %832 = call i32 @x86emuOp_scas_byte(%struct.x86emu* %831)
  br label %1114

833:                                              ; preds = %1
  %834 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %835 = call i32 @x86emuOp_scas_word(%struct.x86emu* %834)
  br label %1114

836:                                              ; preds = %1
  %837 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %838 = call i8* @fetch_byte_imm(%struct.x86emu* %837)
  %839 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %840 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %839, i32 0, i32 0
  %841 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %840, i32 0, i32 11
  store i8* %838, i8** %841, align 8
  br label %1114

842:                                              ; preds = %1
  %843 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %844 = call i8* @fetch_byte_imm(%struct.x86emu* %843)
  %845 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %846 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %845, i32 0, i32 0
  %847 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %846, i32 0, i32 10
  store i8* %844, i8** %847, align 8
  br label %1114

848:                                              ; preds = %1
  %849 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %850 = call i8* @fetch_byte_imm(%struct.x86emu* %849)
  %851 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %852 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %851, i32 0, i32 0
  %853 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %852, i32 0, i32 9
  store i8* %850, i8** %853, align 8
  br label %1114

854:                                              ; preds = %1
  %855 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %856 = call i8* @fetch_byte_imm(%struct.x86emu* %855)
  %857 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %858 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %857, i32 0, i32 0
  %859 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %858, i32 0, i32 8
  store i8* %856, i8** %859, align 8
  br label %1114

860:                                              ; preds = %1
  %861 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %862 = call i8* @fetch_byte_imm(%struct.x86emu* %861)
  %863 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %864 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %863, i32 0, i32 0
  %865 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %864, i32 0, i32 7
  store i8* %862, i8** %865, align 8
  br label %1114

866:                                              ; preds = %1
  %867 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %868 = call i8* @fetch_byte_imm(%struct.x86emu* %867)
  %869 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %870 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %869, i32 0, i32 0
  %871 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %870, i32 0, i32 6
  store i8* %868, i8** %871, align 8
  br label %1114

872:                                              ; preds = %1
  %873 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %874 = call i8* @fetch_byte_imm(%struct.x86emu* %873)
  %875 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %876 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %875, i32 0, i32 0
  %877 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %876, i32 0, i32 5
  store i8* %874, i8** %877, align 8
  br label %1114

878:                                              ; preds = %1
  %879 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %880 = call i8* @fetch_byte_imm(%struct.x86emu* %879)
  %881 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %882 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %881, i32 0, i32 0
  %883 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %882, i32 0, i32 4
  store i8* %880, i8** %883, align 8
  br label %1114

884:                                              ; preds = %1
  %885 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %886 = call i32 @x86emuOp_mov_word_AX_IMM(%struct.x86emu* %885)
  br label %1114

887:                                              ; preds = %1
  %888 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %889 = call i32 @x86emuOp_mov_word_CX_IMM(%struct.x86emu* %888)
  br label %1114

890:                                              ; preds = %1
  %891 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %892 = call i32 @x86emuOp_mov_word_DX_IMM(%struct.x86emu* %891)
  br label %1114

893:                                              ; preds = %1
  %894 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %895 = call i32 @x86emuOp_mov_word_BX_IMM(%struct.x86emu* %894)
  br label %1114

896:                                              ; preds = %1
  %897 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %898 = call i32 @x86emuOp_mov_word_SP_IMM(%struct.x86emu* %897)
  br label %1114

899:                                              ; preds = %1
  %900 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %901 = call i32 @x86emuOp_mov_word_BP_IMM(%struct.x86emu* %900)
  br label %1114

902:                                              ; preds = %1
  %903 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %904 = call i32 @x86emuOp_mov_word_SI_IMM(%struct.x86emu* %903)
  br label %1114

905:                                              ; preds = %1
  %906 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %907 = call i32 @x86emuOp_mov_word_DI_IMM(%struct.x86emu* %906)
  br label %1114

908:                                              ; preds = %1
  %909 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %910 = call i32 @x86emuOp_opcC0_byte_RM_MEM(%struct.x86emu* %909)
  br label %1114

911:                                              ; preds = %1
  %912 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %913 = call i32 @x86emuOp_opcC1_word_RM_MEM(%struct.x86emu* %912)
  br label %1114

914:                                              ; preds = %1
  %915 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %916 = call i32 @x86emuOp_ret_near_IMM(%struct.x86emu* %915)
  br label %1114

917:                                              ; preds = %1
  %918 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %919 = call i8* @pop_word(%struct.x86emu* %918)
  %920 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %921 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %920, i32 0, i32 0
  %922 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %921, i32 0, i32 3
  store i8* %919, i8** %922, align 8
  br label %1114

923:                                              ; preds = %1
  %924 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %925 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %926 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %925, i32 0, i32 0
  %927 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %926, i32 0, i32 2
  %928 = call i32 @common_load_far_pointer(%struct.x86emu* %924, i8** %927)
  br label %1114

929:                                              ; preds = %1
  %930 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %931 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %932 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %931, i32 0, i32 0
  %933 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %932, i32 0, i32 1
  %934 = call i32 @common_load_far_pointer(%struct.x86emu* %930, i8** %933)
  br label %1114

935:                                              ; preds = %1
  %936 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %937 = call i32 @x86emuOp_mov_byte_RM_IMM(%struct.x86emu* %936)
  br label %1114

938:                                              ; preds = %1
  %939 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %940 = call i32 @x86emuOp_mov_word_RM_IMM(%struct.x86emu* %939)
  br label %1114

941:                                              ; preds = %1
  %942 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %943 = call i32 @x86emuOp_enter(%struct.x86emu* %942)
  br label %1114

944:                                              ; preds = %1
  %945 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %946 = call i32 @x86emuOp_leave(%struct.x86emu* %945)
  br label %1114

947:                                              ; preds = %1
  %948 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %949 = call i32 @x86emuOp_ret_far_IMM(%struct.x86emu* %948)
  br label %1114

950:                                              ; preds = %1
  %951 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %952 = call i32 @x86emuOp_ret_far(%struct.x86emu* %951)
  br label %1114

953:                                              ; preds = %1
  %954 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %955 = call i32 @x86emuOp_int3(%struct.x86emu* %954)
  br label %1114

956:                                              ; preds = %1
  %957 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %958 = call i32 @x86emuOp_int_IMM(%struct.x86emu* %957)
  br label %1114

959:                                              ; preds = %1
  %960 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %961 = call i32 @x86emuOp_into(%struct.x86emu* %960)
  br label %1114

962:                                              ; preds = %1
  %963 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %964 = call i32 @x86emuOp_iret(%struct.x86emu* %963)
  br label %1114

965:                                              ; preds = %1
  %966 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %967 = call i32 @x86emuOp_opcD0_byte_RM_1(%struct.x86emu* %966)
  br label %1114

968:                                              ; preds = %1
  %969 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %970 = call i32 @x86emuOp_opcD1_word_RM_1(%struct.x86emu* %969)
  br label %1114

971:                                              ; preds = %1
  %972 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %973 = call i32 @x86emuOp_opcD2_byte_RM_CL(%struct.x86emu* %972)
  br label %1114

974:                                              ; preds = %1
  %975 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %976 = call i32 @x86emuOp_opcD3_word_RM_CL(%struct.x86emu* %975)
  br label %1114

977:                                              ; preds = %1
  %978 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %979 = call i32 @x86emuOp_aam(%struct.x86emu* %978)
  br label %1114

980:                                              ; preds = %1
  %981 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %982 = call i32 @x86emuOp_aad(%struct.x86emu* %981)
  br label %1114

983:                                              ; preds = %1
  %984 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %985 = call i32 @x86emuOp_xlat(%struct.x86emu* %984)
  br label %1114

986:                                              ; preds = %1
  %987 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %988 = call i32 @x86emuOp_esc_coprocess_d8(%struct.x86emu* %987)
  br label %1114

989:                                              ; preds = %1
  %990 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %991 = call i32 @x86emuOp_esc_coprocess_d9(%struct.x86emu* %990)
  br label %1114

992:                                              ; preds = %1
  %993 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %994 = call i32 @x86emuOp_esc_coprocess_da(%struct.x86emu* %993)
  br label %1114

995:                                              ; preds = %1
  %996 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %997 = call i32 @x86emuOp_esc_coprocess_db(%struct.x86emu* %996)
  br label %1114

998:                                              ; preds = %1
  %999 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1000 = call i32 @x86emuOp_esc_coprocess_dc(%struct.x86emu* %999)
  br label %1114

1001:                                             ; preds = %1
  %1002 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1003 = call i32 @x86emuOp_esc_coprocess_dd(%struct.x86emu* %1002)
  br label %1114

1004:                                             ; preds = %1
  %1005 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1006 = call i32 @x86emuOp_esc_coprocess_de(%struct.x86emu* %1005)
  br label %1114

1007:                                             ; preds = %1
  %1008 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1009 = call i32 @x86emuOp_esc_coprocess_df(%struct.x86emu* %1008)
  br label %1114

1010:                                             ; preds = %1
  %1011 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1012 = call i32 @x86emuOp_loopne(%struct.x86emu* %1011)
  br label %1114

1013:                                             ; preds = %1
  %1014 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1015 = call i32 @x86emuOp_loope(%struct.x86emu* %1014)
  br label %1114

1016:                                             ; preds = %1
  %1017 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1018 = call i32 @x86emuOp_loop(%struct.x86emu* %1017)
  br label %1114

1019:                                             ; preds = %1
  %1020 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1021 = call i32 @x86emuOp_jcxz(%struct.x86emu* %1020)
  br label %1114

1022:                                             ; preds = %1
  %1023 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1024 = call i32 @x86emuOp_in_byte_AL_IMM(%struct.x86emu* %1023)
  br label %1114

1025:                                             ; preds = %1
  %1026 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1027 = call i32 @x86emuOp_in_word_AX_IMM(%struct.x86emu* %1026)
  br label %1114

1028:                                             ; preds = %1
  %1029 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1030 = call i32 @x86emuOp_out_byte_IMM_AL(%struct.x86emu* %1029)
  br label %1114

1031:                                             ; preds = %1
  %1032 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1033 = call i32 @x86emuOp_out_word_IMM_AX(%struct.x86emu* %1032)
  br label %1114

1034:                                             ; preds = %1
  %1035 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1036 = call i32 @x86emuOp_call_near_IMM(%struct.x86emu* %1035)
  br label %1114

1037:                                             ; preds = %1
  %1038 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1039 = call i32 @x86emuOp_jump_near_IMM(%struct.x86emu* %1038)
  br label %1114

1040:                                             ; preds = %1
  %1041 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1042 = call i32 @x86emuOp_jump_far_IMM(%struct.x86emu* %1041)
  br label %1114

1043:                                             ; preds = %1
  %1044 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1045 = call i32 @x86emuOp_jump_byte_IMM(%struct.x86emu* %1044)
  br label %1114

1046:                                             ; preds = %1
  %1047 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1048 = call i32 @x86emuOp_in_byte_AL_DX(%struct.x86emu* %1047)
  br label %1114

1049:                                             ; preds = %1
  %1050 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1051 = call i32 @x86emuOp_in_word_AX_DX(%struct.x86emu* %1050)
  br label %1114

1052:                                             ; preds = %1
  %1053 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1054 = call i32 @x86emuOp_out_byte_DX_AL(%struct.x86emu* %1053)
  br label %1114

1055:                                             ; preds = %1
  %1056 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1057 = call i32 @x86emuOp_out_word_DX_AX(%struct.x86emu* %1056)
  br label %1114

1058:                                             ; preds = %1
  %1059 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1060 = call i32 @x86emuOp_lock(%struct.x86emu* %1059)
  br label %1114

1061:                                             ; preds = %1
  %1062 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %1063 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1064 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1064, i32 0, i32 0
  %1066 = load i32, i32* %1065, align 8
  %1067 = or i32 %1066, %1062
  store i32 %1067, i32* %1065, align 8
  br label %1114

1068:                                             ; preds = %1
  %1069 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %1070 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1071 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %1070, i32 0, i32 0
  %1072 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1071, i32 0, i32 0
  %1073 = load i32, i32* %1072, align 8
  %1074 = or i32 %1073, %1069
  store i32 %1074, i32* %1072, align 8
  br label %1114

1075:                                             ; preds = %1
  %1076 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1077 = call i32 @x86emu_halt_sys(%struct.x86emu* %1076)
  br label %1114

1078:                                             ; preds = %1
  %1079 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1080 = call i32 @x86emuOp_cmc(%struct.x86emu* %1079)
  br label %1114

1081:                                             ; preds = %1
  %1082 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1083 = call i32 @x86emuOp_opcF6_byte_RM(%struct.x86emu* %1082)
  br label %1114

1084:                                             ; preds = %1
  %1085 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1086 = call i32 @x86emuOp_opcF7_word_RM(%struct.x86emu* %1085)
  br label %1114

1087:                                             ; preds = %1
  %1088 = load i32, i32* @F_CF, align 4
  %1089 = call i32 @CLEAR_FLAG(i32 %1088)
  br label %1114

1090:                                             ; preds = %1
  %1091 = load i32, i32* @F_CF, align 4
  %1092 = call i32 @SET_FLAG(i32 %1091)
  br label %1114

1093:                                             ; preds = %1
  %1094 = load i32, i32* @F_IF, align 4
  %1095 = call i32 @CLEAR_FLAG(i32 %1094)
  br label %1114

1096:                                             ; preds = %1
  %1097 = load i32, i32* @F_IF, align 4
  %1098 = call i32 @SET_FLAG(i32 %1097)
  br label %1114

1099:                                             ; preds = %1
  %1100 = load i32, i32* @F_DF, align 4
  %1101 = call i32 @CLEAR_FLAG(i32 %1100)
  br label %1114

1102:                                             ; preds = %1
  %1103 = load i32, i32* @F_DF, align 4
  %1104 = call i32 @SET_FLAG(i32 %1103)
  br label %1114

1105:                                             ; preds = %1
  %1106 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1107 = call i32 @x86emuOp_opcFE_byte_RM(%struct.x86emu* %1106)
  br label %1114

1108:                                             ; preds = %1
  %1109 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1110 = call i32 @x86emuOp_opcFF_word_RM(%struct.x86emu* %1109)
  br label %1114

1111:                                             ; preds = %1
  %1112 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1113 = call i32 @x86emu_halt_sys(%struct.x86emu* %1112)
  br label %1114

1114:                                             ; preds = %1111, %1108, %1105, %1102, %1099, %1096, %1093, %1090, %1087, %1084, %1081, %1078, %1075, %1068, %1061, %1058, %1055, %1052, %1049, %1046, %1043, %1040, %1037, %1034, %1031, %1028, %1025, %1022, %1019, %1016, %1013, %1010, %1007, %1004, %1001, %998, %995, %992, %989, %986, %983, %980, %977, %974, %971, %968, %965, %962, %959, %956, %953, %950, %947, %944, %941, %938, %935, %929, %923, %917, %914, %911, %908, %905, %902, %899, %896, %893, %890, %887, %884, %878, %872, %866, %860, %854, %848, %842, %836, %833, %830, %827, %824, %821, %818, %815, %806, %803, %800, %797, %794, %791, %788, %785, %782, %779, %776, %773, %770, %769, %766, %763, %760, %757, %754, %751, %748, %745, %742, %739, %738, %735, %732, %729, %726, %723, %720, %717, %714, %711, %708, %703, %700, %697, %694, %691, %688, %685, %682, %679, %676, %668, %663, %655, %650, %646, %632, %615, %610, %602, %597, %589, %584, %581, %578, %575, %572, %569, %566, %563, %560, %553, %546, %539, %532, %529, %526, %520, %514, %508, %502, %496, %490, %484, %478, %472, %466, %460, %454, %448, %442, %436, %430, %424, %418, %412, %406, %400, %394, %388, %382, %376, %370, %364, %358, %352, %346, %340, %334, %324, %317, %314, %311, %308, %305, %300, %297, %287, %280, %275, %271, %266, %262, %257, %253, %243, %236, %231, %227, %222, %218, %213, %209, %199, %192, %187, %183, %178, %174, %169, %165, %159, %152, %147, %143, %138, %134, %129, %125, %119, %112, %107, %103, %98, %94, %89, %85, %82, %75, %70, %66, %61, %57, %52, %48, %42, %35, %30, %26, %21, %17, %12, %8
  %1115 = load i32, i32* %3, align 4
  %1116 = icmp ne i32 %1115, 38
  br i1 %1116, label %1117, label %1138

1117:                                             ; preds = %1114
  %1118 = load i32, i32* %3, align 4
  %1119 = icmp ne i32 %1118, 46
  br i1 %1119, label %1120, label %1138

1120:                                             ; preds = %1117
  %1121 = load i32, i32* %3, align 4
  %1122 = icmp ne i32 %1121, 54
  br i1 %1122, label %1123, label %1138

1123:                                             ; preds = %1120
  %1124 = load i32, i32* %3, align 4
  %1125 = icmp ne i32 %1124, 62
  br i1 %1125, label %1126, label %1138

1126:                                             ; preds = %1123
  %1127 = load i32, i32* %3, align 4
  %1128 = or i32 %1127, 3
  %1129 = icmp ne i32 %1128, 103
  br i1 %1129, label %1130, label %1138

1130:                                             ; preds = %1126
  %1131 = load i32, i32* @SYSMODE_CLRMASK, align 4
  %1132 = xor i32 %1131, -1
  %1133 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %1134 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %1133, i32 0, i32 0
  %1135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1134, i32 0, i32 0
  %1136 = load i32, i32* %1135, align 8
  %1137 = and i32 %1136, %1132
  store i32 %1137, i32* %1135, align 8
  br label %1138

1138:                                             ; preds = %1130, %1126, %1123, %1120, %1117, %1114
  ret void
}

declare dso_local i8* @fetch_byte_imm(%struct.x86emu*) #1

declare dso_local i32 @common_binop_byte_rm_r(%struct.x86emu*, i32) #1

declare dso_local i32 @common_binop_word_long_rm_r(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @common_binop_byte_r_rm(%struct.x86emu*, i32) #1

declare dso_local i32 @common_binop_word_long_r_rm(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @common_binop_byte_imm(%struct.x86emu*, i32) #1

declare dso_local i32 @common_binop_word_long_imm(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @push_word(%struct.x86emu*, i8*) #1

declare dso_local i8* @pop_word(%struct.x86emu*) #1

declare dso_local i32 @x86emu_exec_two_byte(%struct.x86emu*) #1

declare dso_local i8* @daa_byte(%struct.x86emu*, i8*) #1

declare dso_local i8* @das_byte(%struct.x86emu*, i8*) #1

declare dso_local i32 @aaa_word(%struct.x86emu*, i32) #1

declare dso_local i32 @common_binop_ns_byte_rm_r(%struct.x86emu*, i32 (%struct.x86emu*, i8*, i8*)*) #1

declare dso_local i32 @cmp_byte_no_return(%struct.x86emu*, i8*, i8*) #1

declare dso_local i32 @common_binop_ns_word_long_rm_r(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @x86emuOp_cmp_byte_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cmp_word_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cmp_byte_AL_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cmp_word_AX_IMM(%struct.x86emu*) #1

declare dso_local i32 @aas_word(%struct.x86emu*, i32) #1

declare dso_local i32 @common_inc_word_long(%struct.x86emu*, i32*) #1

declare dso_local i32 @common_dec_word_long(%struct.x86emu*, i32*) #1

declare dso_local i32 @common_push_word_long(%struct.x86emu*, i32*) #1

declare dso_local i32 @common_pop_word_long(%struct.x86emu*, i32*) #1

declare dso_local i32 @x86emuOp_push_all(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_pop_all(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_push_word_IMM(%struct.x86emu*) #1

declare dso_local i32 @common_imul_imm(%struct.x86emu*, i32) #1

declare dso_local i32 @x86emuOp_push_byte_IMM(%struct.x86emu*) #1

declare dso_local i32 @ins(%struct.x86emu*, i32) #1

declare dso_local i32 @x86emuOp_ins_word(%struct.x86emu*) #1

declare dso_local i32 @outs(%struct.x86emu*, i32) #1

declare dso_local i32 @x86emuOp_outs_word(%struct.x86emu*) #1

declare dso_local i32 @common_jmp_near(%struct.x86emu*, i32) #1

declare dso_local i32 @ACCESS_FLAG(i32) #1

declare dso_local i32 @x86emuOp_jump_near_L(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_jump_near_NL(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_jump_near_LE(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_jump_near_NLE(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opc80_byte_RM_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opc81_word_RM_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opc82_byte_RM_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opc83_word_RM_IMM(%struct.x86emu*) #1

declare dso_local i32 @test_byte(%struct.x86emu*, i8*, i8*) #1

declare dso_local i32 @x86emuOp_xchg_byte_RM_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_RM_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_byte_RM_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_RM_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_byte_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_RM_SR(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_lea_word_R_M(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_SR_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_pop_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_AX_CX(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_AX_DX(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_AX_BX(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_AX_SP(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_AX_BP(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_AX_SI(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xchg_word_AX_DI(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cbw(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cwd(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_call_far_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_pushf_word(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_popf_word(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_sahf(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_lahf(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_AL_M_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_AX_M_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_M_AL_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_M_AX_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_movs_byte(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_movs_word(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cmps_byte(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cmps_word(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_test_AX_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_stos_byte(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_stos_word(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_lods_byte(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_lods_word(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_scas_byte(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_scas_word(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_AX_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_CX_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_DX_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_BX_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_SP_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_BP_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_SI_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_DI_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcC0_byte_RM_MEM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcC1_word_RM_MEM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_ret_near_IMM(%struct.x86emu*) #1

declare dso_local i32 @common_load_far_pointer(%struct.x86emu*, i8**) #1

declare dso_local i32 @x86emuOp_mov_byte_RM_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_mov_word_RM_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_enter(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_leave(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_ret_far_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_ret_far(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_int3(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_int_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_into(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_iret(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcD0_byte_RM_1(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcD1_word_RM_1(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcD2_byte_RM_CL(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcD3_word_RM_CL(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_aam(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_aad(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_xlat(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_d8(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_d9(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_da(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_db(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_dc(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_dd(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_de(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_esc_coprocess_df(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_loopne(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_loope(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_loop(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_jcxz(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_in_byte_AL_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_in_word_AX_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_out_byte_IMM_AL(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_out_word_IMM_AX(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_call_near_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_jump_near_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_jump_far_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_jump_byte_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_in_byte_AL_DX(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_in_word_AX_DX(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_out_byte_DX_AL(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_out_word_DX_AX(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_lock(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_cmc(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcF6_byte_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcF7_word_RM(%struct.x86emu*) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @x86emuOp_opcFE_byte_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp_opcFF_word_RM(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
